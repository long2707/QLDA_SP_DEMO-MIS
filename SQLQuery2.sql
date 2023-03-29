USE QLDA_DATA
GO
  /*kiem tra user*/
CREATE PROC  CHECK_USER
@username varchar(20),
@password varchar(20)
AS
	SELECT a.TenNV, c.role, a.MaNV
	FROM NHANVIEN a INNER JOIN USERNV b ON a.MaNV = b.MaNV
					INNER JOIN CHUCVU c  ON a.MaCV= c.MaCV
	WHERE b.usename= @username AND b.password= @password
	
GO
  /*tao hoa don*/
CREATE PROC TAOHOADON
@maHD uniqueidentifier,
@maSP uniqueidentifier,
@soluong int,
@DonGia NUMERIC(19,4),
@ThanhTien NUMERIC(19,4)
AS
	INSERT INTO CHITIETHOADON SELECT @maHD, @maSP, @soluong, @DonGia, @ThanhTien
	UPDATE SANPHAM SET SoLuong= SoLuong- @soluong WHERE CONVERT(nvarchar(100), MaSP)= @maSP
GO
	  /*cap nhat hoa don*/
CREATE PROC UPDATEHOADON
@maHD uniqueidentifier,
@maSP uniqueidentifier,
@soluong int,
@ThanhTien NUMERIC(19,4)
AS
	DECLARE @solg int
	SELECT @solg=SoLuong FROM CHITIETHOADON WHERE MaHD=@maHD AND MaSP= @maSP
	UPDATE CHITIETHOADON SET SoLuong=@soluong , ThanhTien=@ThanhTien WHERE MaHD=@maHD AND MaSP= @maSP
	IF (@solg <> @soluong)
		BEGIN
			UPDATE SANPHAM SET SoLuong= SoLuong- @soluong WHERE CONVERT(nvarchar(100), MaSP)= @maSP
		END
GO
  /*Xóa hoa don*/
CREATE PROC DELETEHOADON
@maHD uniqueidentifier,
@maSP uniqueidentifier,
@soluong int
AS
	DECLARE @solg int
	SELECT @solg=SoLuong FROM CHITIETHOADON WHERE MaHD=@maHD AND MaSP= @maSP
	DELETE CHITIETHOADON WHERE MaHD=@maHD AND MaSP= @maSP

			UPDATE SANPHAM SET SoLuong= SoLuong + @soluong WHERE CONVERT(nvarchar(100), MaSP)= @maSP
GO
  /*huy tao hoa don*/		
CREATE PROC HUYTAOHOADON
@maHD uniqueidentifier
AS
	DELETE CHITIETHOADON WHERE MaHD=@maHD
GO
		
		  /*tao hoa don*/
CREATE PROC HOADONBAN
@ngaybatdau SMALLDATETIME
AS
			
	
			SELECT HOADON.MaHD AS 'MaHD', KHACHHANG.TenKH AS 'TenKH', KHACHHANG.Sdt AS 'Sdt', NHANVIEN.TenNV AS 'TenNV', HOADON.NgayLapHD AS 'NgayLD'
		INTO #tmp	FROM HOADON INNER JOIN KHACHHANG ON HOADON.MaKH = KHACHHANG.MaKH
						INNER JOIN NHANVIEN ON HOADON.MaNV = NHANVIEN.MaNV
						INNER JOIN CHITIETHOADON ON HOADON.MaHD = CHITIETHOADON.MaHD
	IF (@ngaybatdau <> '')
		BEGIN 
			SELECT DISTINCT #tmp.MaHD, #tmp.TenKH, SANPHAM.TenSP, CHITIETHOADON.SoLuong, CHITIETHOADON.ThanhTien, #tmp.NgayLD, #tmp.TenNV, CHITIETHOADON.MaSP
			FROM CHITIETHOADON INNER JOIN #tmp ON CHITIETHOADON.MaHD = #tmp.MaHD
							 INNER JOIN SANPHAM ON CHITIETHOADON.MaSP = SANPHAM.MaSP WHERE FORMAT(#tmp.NgayLD, 'dd/MM/yyyy')= FORMAT(@ngaybatdau, 'dd/MM/yyyy') 
		END
	ELSE
		BEGIN
		    SELECT DISTINCT #tmp.MaHD, #tmp.TenKH, #tmp.TenNV, SANPHAM.TenSP, CHITIETHOADON.SoLuong, CHITIETHOADON.ThanhTien, #tmp.NgayLD, CHITIETHOADON.MaSP
			FROM CHITIETHOADON INNER JOIN #tmp ON CHITIETHOADON.MaHD = #tmp.MaHD
							 INNER JOIN SANPHAM ON CHITIETHOADON.MaSP = SANPHAM.MaSP
		END
GO

/*lay thong tin san pham */
CREATE PROC GETSANPHAM
@tensp nvarchar(100)
AS
	IF @tensp <> ''
		BEGIN 
			EXEC('SELECT SANPHAM.MaSP, SANPHAM.TenSP, DANHMUC.TenDM, SANPHAM.GiaBan, SANPHAM.GiaNhap, SANPHAM.SoLuong FROM SANPHAM LEFT JOIN DANHMUC ON SANPHAM.MaDM = DANHMUC.MaDM WHERE SANPHAM.TenSP LIKE ''%' +@tensp+'%'' ')
		END
	ELSE
		BEGIN 
			SELECT SANPHAM.MaSP, SANPHAM.TenSP, DANHMUC.TenDM, SANPHAM.GiaBan, SANPHAM.GiaNhap, SANPHAM.SoLuong FROM SANPHAM LEFT JOIN DANHMUC ON SANPHAM.MaDM = DANHMUC.MaDM
		END

GO

/* xoa san pham khoi kho */
CREATE PROC XOASANPHAM
@masp varchar(100)
AS
   ALTER TABLE CHITIETHOADON DROP CONSTRAINT fk_sp_chitiet 
   DELETE SANPHAM WHERE MaSP=@masp
   DELETE CHITIETHOADON WHERE MaSP= @masp
   ALTER TABLE CHITIETHOADON
   ADD CONSTRAINT fk_sp_chitiet FOREIGN KEY (MaSP) REFERENCES SANPHAM(MaSP)

   GO

/*nhap hang */
CREATE PROC NHAPKHOSANPHAM
@maphieu uniqueidentifier,
@masp varchar(100),
@madm int ,
@tensp nvarchar(100),
@soluong int,
@gianhap numeric(19,4),
@giaban numeric(19,4)
AS
	DECLARE @maspi varchar(100), @sql varchar(300)
   IF CONVERT(varchar(100), @masp) <> ''
		BEGIN
		   INSERT INTO CHITIETPHIEUNHAPKHO SELECT @maphieu, @maSP, @soluong, @gianhap, (@gianhap*@soluong)
		   UPDATE SANPHAM SET SoLuong= SoLuong+@soluong, GiaNhap= @gianhap, GiaBan=@giaban WHERE CONVERT(varchar(100), MaSP)= @masp
		END
	ELSE
		BEGIN 
			INSERT INTO SANPHAM(TenSP, MaDM, SoLuong, GiaNhap, GiaBan) VALUES (N''+@tensp+'', @madm , @soluong,@gianhap, @giaban)
			SELECT @maspi = MaSP FROM SANPHAM WHERE TenSP = @tensp
			INSERT INTO CHITIETPHIEUNHAPKHO SELECT @maphieu, @maspi, @soluong, @gianhap,(@gianhap*@soluong)
		END
GO
		  /*cap nhat phieu nhap kho*/
CREATE PROC UPDATENHAPKHO
@maphieu uniqueidentifier,
@masp uniqueidentifier,
@dm int,
@tensp nvarchar(100),
@soluong int,
@gianhap numeric(19,4),
@giaban numeric(19,4)
AS
   DECLARE @solgsptr int
   SELECT @solgsptr = SoLuong FROM SANPHAM WHERE MaSP= @masp 
	UPDATE CHITIETPHIEUNHAPKHO SET SoLuong= @soluong, ThanhTien= @soluong*@gianhap WHERE  MaPhieuNhap= @maphieu AND MaSP= @masp  
	UPDATE SANPHAM SET SoLuong= (SoLuong - @solgsptr) + @soluong, TenSP= @tensp, GiaNhap= @gianhap, GiaBan= @giaban WHERE MaSP= @masp


	GO

 /*xuat phieu nhap kho*/
CREATE PROC XUATTHONGTINPHIEUNHAP
@maphieu uniqueidentifier
AS
   SELECT CHITIETPHIEUNHAPKHO.MaPhieuNhap, SANPHAM.MaDM, SANPHAM.TenSP, CHITIETPHIEUNHAPKHO.SoLuong,SANPHAM.GiaNhap, SANPHAM.GiaBan, PHIEUNHAPKHO.NgayLapHD, PHIEUNHAPKHO.MaNCC  
   INTO #tmpt  
   FROM CHITIETPHIEUNHAPKHO INNER JOIN SANPHAM ON CHITIETPHIEUNHAPKHO.MaSP= SANPHAM.MaSP 
						    INNER JOIN PHIEUNHAPKHO ON CHITIETPHIEUNHAPKHO.MaPhieuNhap= PHIEUNHAPKHO.MaPhieuNhap 
   WHERE CHITIETPHIEUNHAPKHO.MaPhieuNhap=  @maphieu

   SELECT #tmpt.MaPhieuNhap, #tmpt.MaDM, #tmpt.TenSP, #tmpt.SoLuong,#tmpt.GiaNhap, #tmpt.GiaBan, #tmpt.NgayLapHD, NHACUNGCAP.TenNCC
   INTO #tmpt2 FROM #tmpt INNER JOIN NHACUNGCAP ON NHACUNGCAP.MaNCC= #tmpt.MaNCC

   SELECT #tmpt2.MaPhieuNhap, #tmpt2.TenSP,  #tmpt2.TenNCC, DANHMUC.TenDM, #tmpt2.SoLuong, #tmpt2.GiaNhap, #tmpt2.GiaBan, #tmpt2.NgayLapHD
   FROM #tmpt2 INNER JOIN DANHMUC ON #tmpt2.MaDM = DANHMUC.MaDM WHERE #tmpt2.MaPhieuNhap=@maphieu

   GO
   /*Xóa  phieu nhap kho*/
CREATE PROC DELETEPHIEUNHAPKHO
@maphieu uniqueidentifier,
@maSP uniqueidentifier,
@soluong int
AS
	DECLARE @solg int
	SELECT @solg=SoLuong FROM CHITIETPHIEUNHAPKHO WHERE MaPhieuNhap=@maphieu AND MaSP= @maSP
	DELETE CHITIETPHIEUNHAPKHO  WHERE MaPhieuNhap=@maphieu AND MaSP= @maSP
	UPDATE SANPHAM SET SoLuong= SoLuong + @soluong -@solg WHERE CONVERT(nvarchar(100), MaSP)= @maSP

GO
	
/*Xóa danh mục*/
CREATE PROC XOADANHMUC
@madm int
AS
	ALTER TABLE SANPHAM
	DROP CONSTRAINT sanpham_danhmuc
	DELETE DANHMUC WHERE MaDM = @madm
	UPDATE SANPHAM SET MaDM=1 WHERE MaDM = @madm
	ALTER TABLE SANPHAM 
	ADD CONSTRAINT sanpham_danhmuc FOREIGN KEY (MaDM) REFERENCES DANHMUC(MaDM)


CREATE PROC ADDNHANVIEN
@macv int,
@tenv Nvarchar(50), 
@sdt char(10),
@diachi nvarchar(225),
@username varchar(20)
AS
	DECLARE @manv uniqueidentifier
   INSERT INTO NHANVIEN(MaCV, TenNV, Sdt,DiaChi) VALUES(@macv, N''+@tenv+'', @sdt, N''+@diachi+'')
   SELECT @manv =MaNV FROM NHANVIEN WHERE TenNV = @tenv AND Sdt = @sdt
   INSERT INTO USERNV(MaNV, usename, password) VALUES (@manv, @username, 1)



CREATE PROC DELETENHANVIEN
@manv uniqueidentifier
AS

	ALTER TABLE USERNV
	DROP CONSTRAINT fk_nhanvien_user

	DELETE NHANVIEN WHERE MaNV= @manv

	DELETE USERNV  WHERE MaNV = @manv

	ALTER TABLE USERNV
	ADD CONSTRAINT fk_nhanvien_user FOREIGN KEY (MaNV) REFERENCES NHANVIEN(MaNV)

