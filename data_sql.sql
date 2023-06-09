USE [QLDA_DATA]
GO
/****** Object:  Table [dbo].[CHITIETPHIEUNHAPKHO]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPHIEUNHAPKHO](
	[MaPhieuNhap] [uniqueidentifier] NOT NULL,
	[MaSP] [uniqueidentifier] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [numeric](19, 4) NOT NULL,
	[ThanhTien] [numeric](19, 4) NOT NULL,
 CONSTRAINT [pk] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADON](
	[MaHD] [uniqueidentifier] NOT NULL,
	[MaSP] [uniqueidentifier] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [numeric](19, 4) NOT NULL,
	[ThanhTien] [numeric](19, 4) NOT NULL,
 CONSTRAINT [pk_hoadon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHUCVU]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUCVU](
	[MaCV] [int] IDENTITY(1,1) NOT NULL,
	[TenCV] [nvarchar](20) NULL,
	[role] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHMUC]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUC](
	[MaDM] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [uniqueidentifier] NOT NULL,
	[MaNV] [uniqueidentifier] NULL,
	[MaKH] [uniqueidentifier] NULL,
	[NgayLapHD] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [uniqueidentifier] NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[Sdt] [char](10) NULL,
	[GioiTinh] [int] NULL,
	[DiaChi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](100) NOT NULL,
	[Sdt] [char](10) NULL,
	[DiaChi] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [uniqueidentifier] NOT NULL,
	[MaCV] [int] NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[Sdt] [char](10) NULL,
	[GioiTinh] [int] NULL,
	[DiaChi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAPKHO]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAPKHO](
	[MaPhieuNhap] [uniqueidentifier] NOT NULL,
	[MaNV] [uniqueidentifier] NULL,
	[MaNCC] [int] NULL,
	[NgayLapHD] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSP] [uniqueidentifier] NOT NULL,
	[MaDM] [int] NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[GiaNhap] [numeric](19, 4) NOT NULL,
	[GiaBan] [numeric](19, 4) NOT NULL,
	[SoLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERNV]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERNV](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [uniqueidentifier] NULL,
	[usename] [varchar](20) NULL,
	[password] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'801bc5a5-1de0-4102-8d12-00fc6d367ed2', N'b2bab0a1-b01c-41b7-8336-93d6286bc2b8', 111, CAST(11.0000 AS Numeric(19, 4)), CAST(1221.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'96ef3f9c-7cf1-4113-b55c-0d69c8b72b5e', N'f2d166a3-6362-49ad-83b0-0457cb4f6246', 1, CAST(90.0000 AS Numeric(19, 4)), CAST(90.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'cdaff348-69b0-451d-bdb1-12aa8882d419', N'cef29b45-2425-4748-b80a-f869aac0ba74', 1111, CAST(111111.0000 AS Numeric(19, 4)), CAST(123444321.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'740127da-88a1-4df2-9f8d-140a02ddc96c', N'40e837f5-64f2-44d6-91fb-99f567701c28', 10, CAST(100.0000 AS Numeric(19, 4)), CAST(1000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'740127da-88a1-4df2-9f8d-140a02ddc96c', N'08bf987e-f374-4e14-a08e-f1263ec7eb64', 100, CAST(1100.0000 AS Numeric(19, 4)), CAST(110000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'ee65adb1-190c-4ae2-a304-16bb15f5c267', N'a3eea030-cb61-4bc3-8a19-627476629a46', 1, CAST(2.0000 AS Numeric(19, 4)), CAST(2.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'0b30b67b-441f-4260-9b77-17bf3aae4fb8', N'e4fbf60e-4c19-4077-9c5d-24cf91ee5418', 10, CAST(10.0000 AS Numeric(19, 4)), CAST(100.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'0b30b67b-441f-4260-9b77-17bf3aae4fb8', N'a6fe3e67-8e6b-4b7a-909e-367f78d6e4bd', 150, CAST(90.0000 AS Numeric(19, 4)), CAST(13500.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'1d1bfb88-1309-4ecf-b88c-1bc6a5424511', N'912aba1a-362a-4570-87e2-6791663c2fa8', 120, CAST(2.0000 AS Numeric(19, 4)), CAST(240.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'85ee8176-51aa-4b4f-ab22-3f8132262e4d', N'f2d166a3-6362-49ad-83b0-0457cb4f6246', 100, CAST(90.0000 AS Numeric(19, 4)), CAST(9000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'85ee8176-51aa-4b4f-ab22-3f8132262e4d', N'08bf987e-f374-4e14-a08e-f1263ec7eb64', 100, CAST(10.0000 AS Numeric(19, 4)), CAST(1000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'95b68052-04e7-4ec8-bdb5-4f5c06681c68', N'f2d166a3-6362-49ad-83b0-0457cb4f6246', 1, CAST(3.0000 AS Numeric(19, 4)), CAST(3.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'1378fc93-2aec-4900-8e78-542539f60479', N'9f85c960-9da3-4bf9-a122-05ebd98cc4e7', 12, CAST(90.0000 AS Numeric(19, 4)), CAST(1080.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'86e83d45-ccf1-4317-abf6-61aec9fb0989', N'cef29b45-2425-4748-b80a-f869aac0ba74', 1, CAST(222.0000 AS Numeric(19, 4)), CAST(222.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'1dc4e4fe-6856-4ec3-8c47-655f3bee1cfe', N'e30a3809-d077-461b-812b-df9d5afe8e20', 1, CAST(11.0000 AS Numeric(19, 4)), CAST(11.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'2def6b5c-5ecb-4674-a9c7-68730b229351', N'9f85c960-9da3-4bf9-a122-05ebd98cc4e7', 1, CAST(10.0000 AS Numeric(19, 4)), CAST(10.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'2def6b5c-5ecb-4674-a9c7-68730b229351', N'7358f967-34c0-4780-adb5-c8d700347557', 10, CAST(111.0000 AS Numeric(19, 4)), CAST(1110.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'70f42756-0c5e-4cd7-8371-84ab0636ce47', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 100, CAST(1000.0000 AS Numeric(19, 4)), CAST(100000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'1a7c1a00-2592-483f-808f-875c46193b4c', N'912aba1a-362a-4570-87e2-6791663c2fa8', 1, CAST(2.0000 AS Numeric(19, 4)), CAST(2.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'325c3521-d9da-4bb9-8706-9ee79a54c698', N'592a766d-1f5d-44d0-b6c8-2f1489e7bc6a', 1, CAST(2.0000 AS Numeric(19, 4)), CAST(2.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'9b264f0b-1a6c-409d-8476-9fd3cbcb6405', N'f2d166a3-6362-49ad-83b0-0457cb4f6246', 100, CAST(90.0000 AS Numeric(19, 4)), CAST(9000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'9b264f0b-1a6c-409d-8476-9fd3cbcb6405', N'141980ca-1bc9-40a2-a754-f1d2493ad9d1', 10, CAST(12.0000 AS Numeric(19, 4)), CAST(120.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'40e50e54-33a7-416b-92fd-c14437615eaa', N'f2d166a3-6362-49ad-83b0-0457cb4f6246', 12, CAST(90.0000 AS Numeric(19, 4)), CAST(1080.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'40e50e54-33a7-416b-92fd-c14437615eaa', N'72f46037-5d3b-4c37-a354-b132f8ad74c2', 100, CAST(5.0000 AS Numeric(19, 4)), CAST(500.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'a9b77ea4-e0fc-4746-b05d-c36e54a2984e', N'84c1733c-852d-4421-b5ac-f86179df7e89', 100, CAST(10.0000 AS Numeric(19, 4)), CAST(1000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'7f0b8ca7-5a84-4110-ae85-d54c621fc3a9', N'9f85c960-9da3-4bf9-a122-05ebd98cc4e7', 10, CAST(85.0000 AS Numeric(19, 4)), CAST(850.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'7f0b8ca7-5a84-4110-ae85-d54c621fc3a9', N'7a21c979-ea77-42b2-8f7e-aca43c463a51', 1, CAST(2.0000 AS Numeric(19, 4)), CAST(2.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'112e383e-236c-4f90-8d6e-e4878c9b9550', N'9f85c960-9da3-4bf9-a122-05ebd98cc4e7', 100, CAST(85.0000 AS Numeric(19, 4)), CAST(8500.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'f1476128-0bbc-4d86-a97f-f3e8ced27b1c', N'f2d166a3-6362-49ad-83b0-0457cb4f6246', 12, CAST(90.0000 AS Numeric(19, 4)), CAST(1080.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'f1476128-0bbc-4d86-a97f-f3e8ced27b1c', N'e30a3809-d077-461b-812b-df9d5afe8e20', 1, CAST(1.0000 AS Numeric(19, 4)), CAST(1.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'64fdc2ff-73a2-4daf-9c3e-f8b6e6d96620', N'9f85c960-9da3-4bf9-a122-05ebd98cc4e7', 1, CAST(2.0000 AS Numeric(19, 4)), CAST(2.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'64fdc2ff-73a2-4daf-9c3e-f8b6e6d96620', N'592a766d-1f5d-44d0-b6c8-2f1489e7bc6a', 2, CAST(3.0000 AS Numeric(19, 4)), CAST(6.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'64fdc2ff-73a2-4daf-9c3e-f8b6e6d96620', N'193d6463-0e1c-476f-ada4-480122e14a77', 2, CAST(33.0000 AS Numeric(19, 4)), CAST(66.0000 AS Numeric(19, 4)))
GO
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'b45a28e8-7a77-4816-b4da-037563980bc4', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'df528fcb-44d8-4cfe-8f4d-06550f7aef18', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'696a6aaf-322c-4b88-8db6-1515274179fe', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'087a7b2d-85ad-466d-a37f-217fa01fd72d', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'087a7b2d-85ad-466d-a37f-217fa01fd72d', N'a3eea030-cb61-4bc3-8a19-627476629a46', 1, CAST(3.0000 AS Numeric(19, 4)), CAST(3.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'27e3f804-1ab3-44d7-9f5e-23ea828a248f', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'1d4d6dc1-8694-421a-b111-27cf7e9158bc', N'f2d166a3-6362-49ad-83b0-0457cb4f6246', 1, CAST(100.0000 AS Numeric(19, 4)), CAST(100.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'7007b643-d4ae-4260-a2b0-2933b2efe265', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 2, CAST(10000.0000 AS Numeric(19, 4)), CAST(20000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'7007b643-d4ae-4260-a2b0-2933b2efe265', N'a3eea030-cb61-4bc3-8a19-627476629a46', 1, CAST(3.0000 AS Numeric(19, 4)), CAST(3.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'54988b77-b4fa-4be7-ab09-2ad32a6a2263', N'f2d166a3-6362-49ad-83b0-0457cb4f6246', 2, CAST(100.0000 AS Numeric(19, 4)), CAST(200.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'6943c4f9-711b-498c-afa4-38d536d354e6', N'9f85c960-9da3-4bf9-a122-05ebd98cc4e7', 1, CAST(10.0000 AS Numeric(19, 4)), CAST(10.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'6943c4f9-711b-498c-afa4-38d536d354e6', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(650.0000 AS Numeric(19, 4)), CAST(650.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'9b2a2b94-c2b1-4206-8ecc-3c8981c1ab16', N'a3eea030-cb61-4bc3-8a19-627476629a46', 2, CAST(3.0000 AS Numeric(19, 4)), CAST(6.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'e34a0000-1173-4abe-9e86-4a6ed21f1769', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'e34a0000-1173-4abe-9e86-4a6ed21f1769', N'a3eea030-cb61-4bc3-8a19-627476629a46', 1, CAST(3.0000 AS Numeric(19, 4)), CAST(3.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'87361110-2f81-4cb5-b7fb-536837e1f71a', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'50923d76-1f38-450c-8c43-5be91c72cc0d', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'10c1e9cc-98c7-432b-a64a-658ce7ad22ae', N'9f85c960-9da3-4bf9-a122-05ebd98cc4e7', 2, CAST(100.0000 AS Numeric(19, 4)), CAST(200.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'a4f38bb7-0e29-4ed9-84f7-719146e4f756', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'5b49b9cf-d3ff-46b1-8b4a-7b57a73d9a64', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'37d0b605-10d3-4fd6-85c8-7edc02ac790c', N'f2d166a3-6362-49ad-83b0-0457cb4f6246', 1, CAST(100.0000 AS Numeric(19, 4)), CAST(100.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'37d0b605-10d3-4fd6-85c8-7edc02ac790c', N'a3eea030-cb61-4bc3-8a19-627476629a46', 1, CAST(80.0000 AS Numeric(19, 4)), CAST(80.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'b32eee9c-60dd-4507-93bf-8bab4f319407', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'ab1024d7-8fdb-465e-b322-913ba09f1e47', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'2cee7492-b0c8-429c-82be-91e203546c01', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'234b2e7c-e80b-4bbe-b4ae-9939763c88c5', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'234b2e7c-e80b-4bbe-b4ae-9939763c88c5', N'a3eea030-cb61-4bc3-8a19-627476629a46', 1, CAST(3.0000 AS Numeric(19, 4)), CAST(3.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'a63522ce-6d41-40af-82cf-9d9cbc3bca55', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'd770e188-0bec-4e45-a036-ab450ac833cb', N'cef29b45-2425-4748-b80a-f869aac0ba74', 2, CAST(2222.0000 AS Numeric(19, 4)), CAST(4444.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'dd7125cf-c3ac-4d78-8ca6-aeaaecb236f3', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'58133a69-5519-4013-9c2f-bbdb6b7013da', N'f2d166a3-6362-49ad-83b0-0457cb4f6246', 1, CAST(100.0000 AS Numeric(19, 4)), CAST(100.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'58133a69-5519-4013-9c2f-bbdb6b7013da', N'193d6463-0e1c-476f-ada4-480122e14a77', 1, CAST(750.0000 AS Numeric(19, 4)), CAST(750.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'e1757024-ed68-48b1-9a02-d15c4aaa3e0f', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'a31decdb-96ba-4420-9135-d275eaa7f00a', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'1d41ddce-ac0d-45c2-a31c-d8a215162d3f', N'9f85c960-9da3-4bf9-a122-05ebd98cc4e7', 1, CAST(100.0000 AS Numeric(19, 4)), CAST(100.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'151a17e1-25c1-4335-97fd-dbec170f8bb6', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'151a17e1-25c1-4335-97fd-dbec170f8bb6', N'a3eea030-cb61-4bc3-8a19-627476629a46', 1, CAST(3.0000 AS Numeric(19, 4)), CAST(3.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'3edfe65c-fffc-4559-93d9-deb31996408b', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'c68a387d-ea64-4587-9a1f-e35197bb15e6', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'5e9d52f1-2ccd-48e1-92fc-ea921ce10ebf', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 2, CAST(650.0000 AS Numeric(19, 4)), CAST(1300.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'1ccf4100-6cee-4e41-bfb5-ec335db2ccdd', N'f2d166a3-6362-49ad-83b0-0457cb4f6246', 2, CAST(100.0000 AS Numeric(19, 4)), CAST(200.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'1ccf4100-6cee-4e41-bfb5-ec335db2ccdd', N'a3eea030-cb61-4bc3-8a19-627476629a46', 1, CAST(80.0000 AS Numeric(19, 4)), CAST(80.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'f90e8a60-d82a-435d-9697-ef5bc8df31f7', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'5ba39714-c907-436d-9e75-f9c73c26b739', N'f2d166a3-6362-49ad-83b0-0457cb4f6246', 3, CAST(100.0000 AS Numeric(19, 4)), CAST(300.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'5ba39714-c907-436d-9e75-f9c73c26b739', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 2, CAST(650.0000 AS Numeric(19, 4)), CAST(1300.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'6ae1c0b9-0045-4104-86c8-fa26a46824ea', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'6ae1c0b9-0045-4104-86c8-fa26a46824ea', N'a3eea030-cb61-4bc3-8a19-627476629a46', 1, CAST(3.0000 AS Numeric(19, 4)), CAST(3.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'dc0e0c05-3584-46cd-81bc-fcffe6787fa5', N'f2d166a3-6362-49ad-83b0-0457cb4f6246', 2, CAST(100.0000 AS Numeric(19, 4)), CAST(200.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'a2258173-b259-4c4a-8969-fda9a171860b', N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 1, CAST(10000.0000 AS Numeric(19, 4)), CAST(10000.0000 AS Numeric(19, 4)))
GO
SET IDENTITY_INSERT [dbo].[CHUCVU] ON 

INSERT [dbo].[CHUCVU] ([MaCV], [TenCV], [role]) VALUES (1, N'Adnin', N'admin')
INSERT [dbo].[CHUCVU] ([MaCV], [TenCV], [role]) VALUES (2, N'Nhân viên bán hàng', N'nvbh')
INSERT [dbo].[CHUCVU] ([MaCV], [TenCV], [role]) VALUES (3, N'Nhân viên kho', N'nvkho')
SET IDENTITY_INSERT [dbo].[CHUCVU] OFF
GO
SET IDENTITY_INSERT [dbo].[DANHMUC] ON 

INSERT [dbo].[DANHMUC] ([MaDM], [TenDM]) VALUES (1, N'Khác')
INSERT [dbo].[DANHMUC] ([MaDM], [TenDM]) VALUES (3, N'bánh mì')
INSERT [dbo].[DANHMUC] ([MaDM], [TenDM]) VALUES (4, N'kẹo')
INSERT [dbo].[DANHMUC] ([MaDM], [TenDM]) VALUES (6, N'snack')
INSERT [dbo].[DANHMUC] ([MaDM], [TenDM]) VALUES (7, N'sữa tươi')
SET IDENTITY_INSERT [dbo].[DANHMUC] OFF
GO
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'b45a28e8-7a77-4816-b4da-037563980bc4', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:24:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'e45e59e4-1d29-4d1b-a3a7-03b3ded2daf5', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:56:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'68e77f5e-f892-4f5c-a79d-05e369cd4b02', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:51:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'df528fcb-44d8-4cfe-8f4d-06550f7aef18', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:28:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'c4651334-2eb8-44ee-9fd9-0f2c214aa509', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T13:06:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'723742f8-6b2e-4750-b8f6-1192cfc2c975', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:37:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'696a6aaf-322c-4b88-8db6-1515274179fe', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:33:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'84cd70bc-c70f-40d1-a3f2-1e1071702100', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:50:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'823ecbad-8a34-4c13-9b5c-205510dbc935', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:54:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'087a7b2d-85ad-466d-a37f-217fa01fd72d', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:11:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'27e3f804-1ab3-44d7-9f5e-23ea828a248f', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:37:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'1d4d6dc1-8694-421a-b111-27cf7e9158bc', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'8901b05b-6fb5-4eb9-b962-c5ef08bc41b0', CAST(N'2023-04-01T12:39:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'7007b643-d4ae-4260-a2b0-2933b2efe265', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:00:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'54988b77-b4fa-4be7-ab09-2ad32a6a2263', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'8901b05b-6fb5-4eb9-b962-c5ef08bc41b0', CAST(N'2023-04-01T12:40:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'd6e9ce94-61fc-46ee-a228-2d1f037db92c', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'8faf31f6-6edd-4a58-a311-2c84e92c3b0f', CAST(N'2023-04-01T12:53:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'e213b099-5ea3-48ec-afc0-2d2890f207a7', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'8901b05b-6fb5-4eb9-b962-c5ef08bc41b0', CAST(N'2023-03-30T12:19:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'81a4e542-cefe-4936-8a66-2e4839dd5a30', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'8309cdc1-9f50-4d17-a665-231479a034e8', CAST(N'2023-04-01T13:10:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'12bc65fc-9f01-4d94-8523-34f5e48af775', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:45:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'6943c4f9-711b-498c-afa4-38d536d354e6', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'8901b05b-6fb5-4eb9-b962-c5ef08bc41b0', CAST(N'2023-04-01T12:17:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'c9967b7e-0e6b-47c4-b259-3933b922de07', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:53:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'9b2a2b94-c2b1-4206-8ecc-3c8981c1ab16', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-31T10:47:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'e34a0000-1173-4abe-9e86-4a6ed21f1769', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:14:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'2efd69e2-b222-46a8-8b13-4f2d5ec657d6', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:35:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'a348152d-06c8-45b4-a218-525ff68206d0', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:40:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'87361110-2f81-4cb5-b7fb-536837e1f71a', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:47:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'fe14e8e3-4190-4cff-bf25-569a4ae65b37', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'76be2f34-c21d-4be0-b1e9-aa4e90d56cf5', CAST(N'2023-04-01T12:48:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'50923d76-1f38-450c-8c43-5be91c72cc0d', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:22:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'95a1f116-c237-4abc-9e43-614d9e3f86ce', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:31:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'10c1e9cc-98c7-432b-a64a-658ce7ad22ae', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'8901b05b-6fb5-4eb9-b962-c5ef08bc41b0', CAST(N'2023-04-01T12:52:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'a4f38bb7-0e29-4ed9-84f7-719146e4f756', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T09:51:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'5b49b9cf-d3ff-46b1-8b4a-7b57a73d9a64', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:42:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'37d0b605-10d3-4fd6-85c8-7edc02ac790c', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'8901b05b-6fb5-4eb9-b962-c5ef08bc41b0', CAST(N'2023-04-01T12:14:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'18e91197-d2d7-4fad-9d77-86960e18c372', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'8901b05b-6fb5-4eb9-b962-c5ef08bc41b0', CAST(N'2023-03-30T12:17:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'2d82857e-6790-4218-8876-8a3229b5471a', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:47:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'b32eee9c-60dd-4507-93bf-8bab4f319407', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:26:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'2b2486f5-321c-4edd-86cf-8d5897ace25e', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:47:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'ab1024d7-8fdb-465e-b322-913ba09f1e47', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:43:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'2cee7492-b0c8-429c-82be-91e203546c01', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:41:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'6ae2da09-e777-4ea2-9c19-93656d011361', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:38:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'095df68a-0e6a-4efb-9b20-9424f9e6c7ae', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'5e2a927b-1ac7-4b2f-8515-9e199ac4342d', CAST(N'2023-04-01T12:42:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'6b4cc6f3-1a83-4f03-b6f4-99004ac7c930', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:52:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'234b2e7c-e80b-4bbe-b4ae-9939763c88c5', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:30:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'a63522ce-6d41-40af-82cf-9d9cbc3bca55', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:52:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'ea57ee74-1876-4e01-a316-a76a4581aaea', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:54:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'd770e188-0bec-4e45-a036-ab450ac833cb', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'8901b05b-6fb5-4eb9-b962-c5ef08bc41b0', CAST(N'2023-03-30T12:03:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'dd7125cf-c3ac-4d78-8ca6-aeaaecb236f3', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:10:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'58133a69-5519-4013-9c2f-bbdb6b7013da', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'8901b05b-6fb5-4eb9-b962-c5ef08bc41b0', CAST(N'2023-04-01T12:30:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'459f7fde-8ddb-4a21-aab0-bd4535c8a5db', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:25:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'e1757024-ed68-48b1-9a02-d15c4aaa3e0f', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:48:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'a31decdb-96ba-4420-9135-d275eaa7f00a', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:44:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'1d41ddce-ac0d-45c2-a31c-d8a215162d3f', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'8901b05b-6fb5-4eb9-b962-c5ef08bc41b0', CAST(N'2023-04-01T12:35:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'e8c2f907-0ceb-403d-8724-dbb30654cc38', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:29:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'151a17e1-25c1-4335-97fd-dbec170f8bb6', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:03:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'3edfe65c-fffc-4559-93d9-deb31996408b', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:23:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'c68a387d-ea64-4587-9a1f-e35197bb15e6', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:21:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'eaea342e-56ec-4d63-844d-e599bf3eceb0', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'dd3459d8-e110-48df-a8f9-d03f9ef223ea', CAST(N'2023-04-01T12:32:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'7bfe6d66-2a36-4b38-822b-e789f9ef322c', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'7ad29ddc-66a7-4246-8c2c-5c11617ab0cf', CAST(N'2023-04-01T12:40:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'5e9d52f1-2ccd-48e1-92fc-ea921ce10ebf', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'8901b05b-6fb5-4eb9-b962-c5ef08bc41b0', CAST(N'2023-04-01T13:09:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'1ccf4100-6cee-4e41-bfb5-ec335db2ccdd', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'8901b05b-6fb5-4eb9-b962-c5ef08bc41b0', CAST(N'2023-04-01T12:33:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'f90e8a60-d82a-435d-9697-ef5bc8df31f7', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T09:38:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'5ba39714-c907-436d-9e75-f9c73c26b739', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'8901b05b-6fb5-4eb9-b962-c5ef08bc41b0', CAST(N'2023-04-01T12:47:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'6ae1c0b9-0045-4104-86c8-fa26a46824ea', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:02:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'dc0e0c05-3584-46cd-81bc-fcffe6787fa5', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'8901b05b-6fb5-4eb9-b962-c5ef08bc41b0', CAST(N'2023-04-01T12:25:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'a2258173-b259-4c4a-8969-fda9a171860b', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-04-01T10:27:00' AS SmallDateTime))
GO
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [Sdt], [GioiTinh], [DiaChi]) VALUES (N'8309cdc1-9f50-4d17-a665-231479a034e8', N'khach hang moi', N'0943797644', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [Sdt], [GioiTinh], [DiaChi]) VALUES (N'8faf31f6-6edd-4a58-a311-2c84e92c3b0f', N'khach hang moi', N'0943797648', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [Sdt], [GioiTinh], [DiaChi]) VALUES (N'294639bc-b73b-4089-996d-33bc55750972', N'khách hàng m?i', N'0921489540', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [Sdt], [GioiTinh], [DiaChi]) VALUES (N'7ad29ddc-66a7-4246-8c2c-5c11617ab0cf', N'khach hang2', N'0943797658', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [Sdt], [GioiTinh], [DiaChi]) VALUES (N'5e2a927b-1ac7-4b2f-8515-9e199ac4342d', N'khách hàng m?i', N'0943797456', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [Sdt], [GioiTinh], [DiaChi]) VALUES (N'76be2f34-c21d-4be0-b1e9-aa4e90d56cf5', N'khách hang moi', N'0943797434', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [Sdt], [GioiTinh], [DiaChi]) VALUES (N'9108d16d-92b3-47cd-8113-b14783ad8341', N'khach hang moi1', N'0943797540', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [Sdt], [GioiTinh], [DiaChi]) VALUES (N'e6b6b98a-3f98-4d96-93ab-b57db032867c', N'khach hang moi', N'0921498534', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [Sdt], [GioiTinh], [DiaChi]) VALUES (N'8901b05b-6fb5-4eb9-b962-c5ef08bc41b0', N'quang', N'0345595444', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [Sdt], [GioiTinh], [DiaChi]) VALUES (N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', N'hải', N'0342345664', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [Sdt], [GioiTinh], [DiaChi]) VALUES (N'dd3459d8-e110-48df-a8f9-d03f9ef223ea', N'khách hàng m?i', N'0921496450', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [Sdt], [GioiTinh], [DiaChi]) VALUES (N'daf3ce9e-8d4b-4e0d-8c98-efad958d9516', N'khách hàng m?i', N'0921498530', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] ON 

INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Sdt], [DiaChi]) VALUES (1, N'nhà cung cấp', N'0345595334', N'việt nam')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Sdt], [DiaChi]) VALUES (2, N'nhà cung cấp hải phòng', N'0345595334', N'việt nam')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Sdt], [DiaChi]) VALUES (3, N'nhà cung cấp 1', N'0232328633', N'Hà Nội')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Sdt], [DiaChi]) VALUES (4, N'nhà cung cấp mới', N'0345678901', N'Hà Nội')
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] OFF
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [MaCV], [TenNV], [Sdt], [GioiTinh], [DiaChi]) VALUES (N'342cf90c-dc61-405b-8d8a-76db1fea30f8', 3, N'Link', N'0324569431', NULL, N'Thanh Hóa')
INSERT [dbo].[NHANVIEN] ([MaNV], [MaCV], [TenNV], [Sdt], [GioiTinh], [DiaChi]) VALUES (N'2118b555-a2b7-4b39-9860-9f97c858f4a7', 2, N'Nguyễn Hoàng Anh', NULL, NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MaNV], [MaCV], [TenNV], [Sdt], [GioiTinh], [DiaChi]) VALUES (N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 1, N'Trần Long', N'0345595332', NULL, NULL)
GO
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'801bc5a5-1de0-4102-8d12-00fc6d367ed2', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 1, CAST(N'2023-04-01T12:59:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'96ef3f9c-7cf1-4113-b55c-0d69c8b72b5e', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 1, CAST(N'2023-04-01T12:46:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'cdaff348-69b0-451d-bdb1-12aa8882d419', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 1, CAST(N'2023-03-30T12:16:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'740127da-88a1-4df2-9f8d-140a02ddc96c', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 1, CAST(N'2023-04-01T14:55:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'ee65adb1-190c-4ae2-a304-16bb15f5c267', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 2, CAST(N'2023-03-30T11:54:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'0b30b67b-441f-4260-9b77-17bf3aae4fb8', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 1, CAST(N'2023-04-01T13:11:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'1d1bfb88-1309-4ecf-b88c-1bc6a5424511', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 3, CAST(N'2023-04-01T12:22:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'85ee8176-51aa-4b4f-ab22-3f8132262e4d', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 1, CAST(N'2023-04-01T12:19:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'95b68052-04e7-4ec8-bdb5-4f5c06681c68', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 1, CAST(N'2023-04-01T11:01:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'1378fc93-2aec-4900-8e78-542539f60479', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 1, CAST(N'2023-04-01T15:33:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'86e83d45-ccf1-4317-abf6-61aec9fb0989', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 3, CAST(N'2023-03-30T12:01:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'1dc4e4fe-6856-4ec3-8c47-655f3bee1cfe', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 1, CAST(N'2023-04-01T15:01:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'2def6b5c-5ecb-4674-a9c7-68730b229351', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 2, CAST(N'2023-04-01T14:59:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'70f42756-0c5e-4cd7-8371-84ab0636ce47', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 1, CAST(N'2023-03-31T10:49:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'1a7c1a00-2592-483f-808f-875c46193b4c', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 2, CAST(N'2023-04-01T12:20:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'325c3521-d9da-4bb9-8706-9ee79a54c698', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 2, CAST(N'2023-03-30T11:58:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'9b264f0b-1a6c-409d-8476-9fd3cbcb6405', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 1, CAST(N'2023-04-01T12:50:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'40e50e54-33a7-416b-92fd-c14437615eaa', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 1, CAST(N'2023-04-01T12:43:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'a9b77ea4-e0fc-4746-b05d-c36e54a2984e', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 1, CAST(N'2023-04-01T12:27:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'7f0b8ca7-5a84-4110-ae85-d54c621fc3a9', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 1, CAST(N'2023-04-01T12:54:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'112e383e-236c-4f90-8d6e-e4878c9b9550', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 1, CAST(N'2023-04-01T12:28:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'f1476128-0bbc-4d86-a97f-f3e8ced27b1c', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 1, CAST(N'2023-04-01T12:51:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'64fdc2ff-73a2-4daf-9c3e-f8b6e6d96620', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 1, CAST(N'2023-04-01T11:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SANPHAM] ([MaSP], [MaDM], [TenSP], [GiaNhap], [GiaBan], [SoLuong]) VALUES (N'f2d166a3-6362-49ad-83b0-0457cb4f6246', 3, N'Bánh M? Hoa Cúc Pháp Harrys Brioche 500G', CAST(90.0000 AS Numeric(19, 4)), CAST(100.0000 AS Numeric(19, 4)), 111)
INSERT [dbo].[SANPHAM] ([MaSP], [MaDM], [TenSP], [GiaNhap], [GiaBan], [SoLuong]) VALUES (N'9f85c960-9da3-4bf9-a122-05ebd98cc4e7', 3, N'Bánh Mì Ngọt Vị Dừa Cô Gái Ôm Lúa Norbeta', CAST(90.0000 AS Numeric(19, 4)), CAST(100.0000 AS Numeric(19, 4)), 116)
INSERT [dbo].[SANPHAM] ([MaSP], [MaDM], [TenSP], [GiaNhap], [GiaBan], [SoLuong]) VALUES (N'e4fbf60e-4c19-4077-9c5d-24cf91ee5418', 1, N'sản phẩn mới', CAST(10.0000 AS Numeric(19, 4)), CAST(30.0000 AS Numeric(19, 4)), 10)
INSERT [dbo].[SANPHAM] ([MaSP], [MaDM], [TenSP], [GiaNhap], [GiaBan], [SoLuong]) VALUES (N'592a766d-1f5d-44d0-b6c8-2f1489e7bc6a', 3, N'Bánh Mì Sữa La Boulangere 10P 350G', CAST(85.0000 AS Numeric(19, 4)), CAST(120.0000 AS Numeric(19, 4)), 12)
INSERT [dbo].[SANPHAM] ([MaSP], [MaDM], [TenSP], [GiaNhap], [GiaBan], [SoLuong]) VALUES (N'a6fe3e67-8e6b-4b7a-909e-367f78d6e4bd', 3, N'Bánh Madi Panettone Pháp H?p Thi?c 750g', CAST(90.0000 AS Numeric(19, 4)), CAST(130.0000 AS Numeric(19, 4)), 150)
INSERT [dbo].[SANPHAM] ([MaSP], [MaDM], [TenSP], [GiaNhap], [GiaBan], [SoLuong]) VALUES (N'3e2d2a61-55de-4f75-b869-43ceab5727c4', 4, N'Kẹo dẻo trái cây Welch', CAST(500.0000 AS Numeric(19, 4)), CAST(650.0000 AS Numeric(19, 4)), 65)
INSERT [dbo].[SANPHAM] ([MaSP], [MaDM], [TenSP], [GiaNhap], [GiaBan], [SoLuong]) VALUES (N'193d6463-0e1c-476f-ada4-480122e14a77', 4, N'Kẹo dẻo Black Forest Gummy Juicy Burst', CAST(650.0000 AS Numeric(19, 4)), CAST(750.0000 AS Numeric(19, 4)), -1)
INSERT [dbo].[SANPHAM] ([MaSP], [MaDM], [TenSP], [GiaNhap], [GiaBan], [SoLuong]) VALUES (N'a3eea030-cb61-4bc3-8a19-627476629a46', 4, N'Kẹo Dẻo Haribo GoldBears 200G', CAST(50.0000 AS Numeric(19, 4)), CAST(80.0000 AS Numeric(19, 4)), 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaDM], [TenSP], [GiaNhap], [GiaBan], [SoLuong]) VALUES (N'912aba1a-362a-4570-87e2-6791663c2fa8', 3, N'bánh m? m?i 2', CAST(4.0000 AS Numeric(19, 4)), CAST(10.0000 AS Numeric(19, 4)), 120)
INSERT [dbo].[SANPHAM] ([MaSP], [MaDM], [TenSP], [GiaNhap], [GiaBan], [SoLuong]) VALUES (N'b2bab0a1-b01c-41b7-8336-93d6286bc2b8', 1, N'sản phẩm mới nhập', CAST(11.0000 AS Numeric(19, 4)), CAST(20.0000 AS Numeric(19, 4)), 111)
INSERT [dbo].[SANPHAM] ([MaSP], [MaDM], [TenSP], [GiaNhap], [GiaBan], [SoLuong]) VALUES (N'40e837f5-64f2-44d6-91fb-99f567701c28', 4, N'kẹo mớ', CAST(100.0000 AS Numeric(19, 4)), CAST(100.0000 AS Numeric(19, 4)), 10)
INSERT [dbo].[SANPHAM] ([MaSP], [MaDM], [TenSP], [GiaNhap], [GiaBan], [SoLuong]) VALUES (N'7a21c979-ea77-42b2-8f7e-aca43c463a51', 1, N'sản phẩm mới 01', CAST(2.0000 AS Numeric(19, 4)), CAST(10.0000 AS Numeric(19, 4)), 1)
INSERT [dbo].[SANPHAM] ([MaSP], [MaDM], [TenSP], [GiaNhap], [GiaBan], [SoLuong]) VALUES (N'72f46037-5d3b-4c37-a354-b132f8ad74c2', 7, N'sữa tươi cô gái hà lan', CAST(5.0000 AS Numeric(19, 4)), CAST(10.0000 AS Numeric(19, 4)), 100)
INSERT [dbo].[SANPHAM] ([MaSP], [MaDM], [TenSP], [GiaNhap], [GiaBan], [SoLuong]) VALUES (N'7358f967-34c0-4780-adb5-c8d700347557', 7, N'sữa tươi mới', CAST(111.0000 AS Numeric(19, 4)), CAST(1113.0000 AS Numeric(19, 4)), 10)
INSERT [dbo].[SANPHAM] ([MaSP], [MaDM], [TenSP], [GiaNhap], [GiaBan], [SoLuong]) VALUES (N'31cd4f2a-d4d4-430e-bd46-d398fa6039d1', 1, N's?n ph?m m?i 02', CAST(3.0000 AS Numeric(19, 4)), CAST(3.0000 AS Numeric(19, 4)), 1)
INSERT [dbo].[SANPHAM] ([MaSP], [MaDM], [TenSP], [GiaNhap], [GiaBan], [SoLuong]) VALUES (N'e30a3809-d077-461b-812b-df9d5afe8e20', 1, N'sản phẩm mới 1', CAST(11.0000 AS Numeric(19, 4)), CAST(111.0000 AS Numeric(19, 4)), 2)
INSERT [dbo].[SANPHAM] ([MaSP], [MaDM], [TenSP], [GiaNhap], [GiaBan], [SoLuong]) VALUES (N'08bf987e-f374-4e14-a08e-f1263ec7eb64', 3, N'bánh mì mới', CAST(1100.0000 AS Numeric(19, 4)), CAST(11111.0000 AS Numeric(19, 4)), 200)
INSERT [dbo].[SANPHAM] ([MaSP], [MaDM], [TenSP], [GiaNhap], [GiaBan], [SoLuong]) VALUES (N'141980ca-1bc9-40a2-a754-f1d2493ad9d1', 1, N'sản phẩm mới', CAST(12.0000 AS Numeric(19, 4)), CAST(24.0000 AS Numeric(19, 4)), 10)
INSERT [dbo].[SANPHAM] ([MaSP], [MaDM], [TenSP], [GiaNhap], [GiaBan], [SoLuong]) VALUES (N'84c1733c-852d-4421-b5ac-f86179df7e89', 7, N'sữa tươi', CAST(10.0000 AS Numeric(19, 4)), CAST(15.0000 AS Numeric(19, 4)), 100)
INSERT [dbo].[SANPHAM] ([MaSP], [MaDM], [TenSP], [GiaNhap], [GiaBan], [SoLuong]) VALUES (N'cef29b45-2425-4748-b80a-f869aac0ba74', 1, N'Khoai Tây Mật Ong Calbee Hàn Quốc', CAST(20.0000 AS Numeric(19, 4)), CAST(40.0000 AS Numeric(19, 4)), 6)
GO
SET IDENTITY_INSERT [dbo].[USERNV] ON 

INSERT [dbo].[USERNV] ([id], [MaNV], [usename], [password]) VALUES (1, N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'admin', N'1                   ')
INSERT [dbo].[USERNV] ([id], [MaNV], [usename], [password]) VALUES (2, N'2118b555-a2b7-4b39-9860-9f97c858f4a7', N'nhanvien1', N'2                   ')
INSERT [dbo].[USERNV] ([id], [MaNV], [usename], [password]) VALUES (8, N'342cf90c-dc61-405b-8d8a-76db1fea30f8', N'nhanvienmoi', N'mstkhaumoi          ')
SET IDENTITY_INSERT [dbo].[USERNV] OFF
GO
ALTER TABLE [dbo].[HOADON] ADD  DEFAULT (newid()) FOR [MaHD]
GO
ALTER TABLE [dbo].[KHACHHANG] ADD  DEFAULT (newid()) FOR [MaKH]
GO
ALTER TABLE [dbo].[NHANVIEN] ADD  DEFAULT (newid()) FOR [MaNV]
GO
ALTER TABLE [dbo].[PHIEUNHAPKHO] ADD  DEFAULT (newid()) FOR [MaPhieuNhap]
GO
ALTER TABLE [dbo].[SANPHAM] ADD  DEFAULT (newid()) FOR [MaSP]
GO
ALTER TABLE [dbo].[SANPHAM] ADD  CONSTRAINT [df_solg]  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAPKHO]  WITH CHECK ADD  CONSTRAINT [chitietnhap_phieunhap] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAPKHO] CHECK CONSTRAINT [chitietnhap_phieunhap]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAPKHO]  WITH CHECK ADD  CONSTRAINT [chitietnhap_sanpham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAPKHO] CHECK CONSTRAINT [chitietnhap_sanpham]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [fk_hd_chitiet] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [fk_hd_chitiet]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [fk_sp_chitiet] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [fk_sp_chitiet]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [hoadon_khachhang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [hoadon_khachhang]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [hoadon_nhanvien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [hoadon_nhanvien]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [fk_nv_cv] FOREIGN KEY([MaCV])
REFERENCES [dbo].[CHUCVU] ([MaCV])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [fk_nv_cv]
GO
ALTER TABLE [dbo].[PHIEUNHAPKHO]  WITH CHECK ADD  CONSTRAINT [phieunhap_ncc] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNCC])
GO
ALTER TABLE [dbo].[PHIEUNHAPKHO] CHECK CONSTRAINT [phieunhap_ncc]
GO
ALTER TABLE [dbo].[PHIEUNHAPKHO]  WITH CHECK ADD  CONSTRAINT [phieunhap_nhanvien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[PHIEUNHAPKHO] CHECK CONSTRAINT [phieunhap_nhanvien]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [sanpham_danhmuc] FOREIGN KEY([MaDM])
REFERENCES [dbo].[DANHMUC] ([MaDM])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [sanpham_danhmuc]
GO
ALTER TABLE [dbo].[USERNV]  WITH CHECK ADD  CONSTRAINT [fk_nhanvien_user] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[USERNV] CHECK CONSTRAINT [fk_nhanvien_user]
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD  CONSTRAINT [check_gioitinh] CHECK  (([GioiTinh]=(2) OR [GioiTinh]=(1) OR [GioiTinh]=(0)))
GO
ALTER TABLE [dbo].[KHACHHANG] CHECK CONSTRAINT [check_gioitinh]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [check_gioitinh_nv] CHECK  (([GioiTinh]=(2) OR [GioiTinh]=(1) OR [GioiTinh]=(0)))
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [check_gioitinh_nv]
GO
/****** Object:  StoredProcedure [dbo].[ADDNHANVIEN]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ADDNHANVIEN]
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
GO
/****** Object:  StoredProcedure [dbo].[CHECK_USER]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC  [dbo].[CHECK_USER]
@username varchar(20),
@password varchar(20)
AS
	SELECT a.TenNV, c.role, a.MaNV
	FROM NHANVIEN a INNER JOIN USERNV b ON a.MaNV = b.MaNV
					INNER JOIN CHUCVU c  ON a.MaCV= c.MaCV
	WHERE b.usename= @username AND b.password= @password
GO
/****** Object:  StoredProcedure [dbo].[DELETEHOADON]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  /*Xóa hoa don*/
CREATE PROC [dbo].[DELETEHOADON]
@maHD uniqueidentifier,
@maSP uniqueidentifier,
@soluong int
AS
	DECLARE @solg int
	SELECT @solg=SoLuong FROM CHITIETHOADON WHERE MaHD=@maHD AND MaSP= @maSP
	DELETE CHITIETHOADON WHERE MaHD=@maHD AND MaSP= @maSP

			UPDATE SANPHAM SET SoLuong= SoLuong + @soluong WHERE CONVERT(nvarchar(100), MaSP)= @maSP
GO
/****** Object:  StoredProcedure [dbo].[DELETENHANVIEN]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETENHANVIEN]
@manv uniqueidentifier
AS

	ALTER TABLE USERNV
	DROP CONSTRAINT fk_nhanvien_user
	/*ALTER TABLE HOADON
	DROP CONSTRAINT hoadon_nhanvien
	ALTER TABLE PHIEUNHAPKHO
	DROP CONSTRAINT phieunhap_nhanvien */

	DELETE NHANVIEN WHERE MaNV= @manv

	DELETE USERNV  WHERE MaNV = @manv
	UPDATE HOADON SET MaNV= '36E7062C-3A63-4A3A-8253-A2A36A67EA4D' WHERE MaNV = @manv
	UPDATE PHIEUNHAPKHO  SET MaNV= '36E7062C-3A63-4A3A-8253-A2A36A67EA4D' WHERE MaNV= @manv


	ALTER TABLE USERNV
	ADD CONSTRAINT fk_nhanvien_user FOREIGN KEY (MaNV) REFERENCES NHANVIEN(MaNV)
GO
/****** Object:  StoredProcedure [dbo].[DELETEPHIEUNHAPKHO]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
   /*Xóa  phieu nhap kho*/
CREATE PROC [dbo].[DELETEPHIEUNHAPKHO]
@maphieu uniqueidentifier,
@maSP uniqueidentifier,
@soluong int
AS
	DECLARE @solg int
	SELECT @solg=SoLuong FROM CHITIETPHIEUNHAPKHO WHERE MaPhieuNhap=@maphieu AND MaSP= @maSP
	DELETE CHITIETPHIEUNHAPKHO  WHERE MaPhieuNhap=@maphieu AND MaSP= @maSP
	UPDATE SANPHAM SET SoLuong= SoLuong + @soluong -@solg WHERE CONVERT(nvarchar(100), MaSP)= @maSP

GO
/****** Object:  StoredProcedure [dbo].[GETSANPHAM]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*lay thong tin san pham */
CREATE PROC [dbo].[GETSANPHAM]
@tensp nvarchar(100)
AS
	IF @tensp <> ''
		BEGIN 
			SELECT SANPHAM.MaSP, SANPHAM.TenSP, DANHMUC.TenDM, SANPHAM.GiaBan, SANPHAM.GiaNhap, SANPHAM.SoLuong FROM SANPHAM LEFT JOIN DANHMUC ON SANPHAM.MaDM = DANHMUC.MaDM WHERE SANPHAM.TenSP LIKE '%'+@tensp+'%'
		END
	ELSE
		BEGIN 
			SELECT SANPHAM.MaSP, SANPHAM.TenSP, DANHMUC.TenDM, SANPHAM.GiaBan, SANPHAM.GiaNhap, SANPHAM.SoLuong FROM SANPHAM LEFT JOIN DANHMUC ON SANPHAM.MaDM = DANHMUC.MaDM
		END
GO
/****** Object:  StoredProcedure [dbo].[HOADONBAN]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
		
		  /*tao hoa don*/
CREATE PROC [dbo].[HOADONBAN]
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
/****** Object:  StoredProcedure [dbo].[HUYTAOHOADON]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  /*huy tao hoa don*/		
CREATE PROC [dbo].[HUYTAOHOADON]
@maHD uniqueidentifier
AS
	DELETE CHITIETHOADON WHERE MaHD=@maHD
GO
/****** Object:  StoredProcedure [dbo].[NHAPKHOSANPHAM]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*nhap hang */
CREATE PROC [dbo].[NHAPKHOSANPHAM]
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
/****** Object:  StoredProcedure [dbo].[TAOHOADON]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TAOHOADON]
@maHD uniqueidentifier,
@maSP uniqueidentifier,
@soluong int,
@DonGia NUMERIC(19,4),
@ThanhTien NUMERIC(19,4)
AS
	DECLARE @solgsp int
	SELECT @solgsp = SoLuong-@soluong FROM SANPHAM WHERE CONVERT(nvarchar(100), MaSP)= @maSP
	INSERT INTO CHITIETHOADON SELECT @maHD, @maSP, @soluong, @DonGia, @ThanhTien
	IF @solgsp = 0
		BEGIN 
		UPDATE SANPHAM SET SoLuong= 0 WHERE CONVERT(nvarchar(100), MaSP)= @maSP
		END
	ELSE
		BEGIN 
		UPDATE SANPHAM SET SoLuong= @solgsp WHERE CONVERT(nvarchar(100), MaSP)= @maSP
		END
GO
/****** Object:  StoredProcedure [dbo].[UPDATEHOADON]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	  /*cap nhat hoa don*/
CREATE PROC [dbo].[UPDATEHOADON]
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
/****** Object:  StoredProcedure [dbo].[UPDATENHAPKHO]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATENHAPKHO]
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
	UPDATE SANPHAM SET SoLuong= (SoLuong - @solgsptr) + @soluong, TenSP= N''+@tensp+'', GiaNhap= @gianhap, GiaBan= @giaban WHERE MaSP= @masp
GO
/****** Object:  StoredProcedure [dbo].[XOADANHMUC]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	
/*Xóa danh mục*/
CREATE PROC [dbo].[XOADANHMUC]
@madm int
AS
	ALTER TABLE SANPHAM
	DROP CONSTRAINT sanpham_danhmuc
	DELETE DANHMUC WHERE MaDM = @madm
	UPDATE SANPHAM SET MaDM=1 WHERE MaDM = @madm
	ALTER TABLE SANPHAM 
	ADD CONSTRAINT sanpham_danhmuc FOREIGN KEY (MaDM) REFERENCES DANHMUC(MaDM)
GO
/****** Object:  StoredProcedure [dbo].[XOASANPHAM]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* xoa san pham khoi kho */
CREATE PROC [dbo].[XOASANPHAM]
@masp varchar(100)
AS
   ALTER TABLE CHITIETHOADON DROP CONSTRAINT fk_sp_chitiet 
   DELETE SANPHAM WHERE MaSP=@masp
   DELETE CHITIETHOADON WHERE MaSP= @masp
   ALTER TABLE CHITIETHOADON
   ADD CONSTRAINT fk_sp_chitiet FOREIGN KEY (MaSP) REFERENCES SANPHAM(MaSP)

GO
/****** Object:  StoredProcedure [dbo].[XUATTHONGTINPHIEUNHAP]    Script Date: 4/1/2023 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XUATTHONGTINPHIEUNHAP]
@maphieu uniqueidentifier
AS
   SELECT CHITIETPHIEUNHAPKHO.MaPhieuNhap, SANPHAM.MaDM,  N''+SANPHAM.TenSP+'' AS TenSP, CHITIETPHIEUNHAPKHO.SoLuong,SANPHAM.GiaNhap, SANPHAM.GiaBan, PHIEUNHAPKHO.NgayLapHD, PHIEUNHAPKHO.MaNCC  
   INTO #tmpt  
   FROM CHITIETPHIEUNHAPKHO INNER JOIN SANPHAM ON CHITIETPHIEUNHAPKHO.MaSP= SANPHAM.MaSP 
						    INNER JOIN PHIEUNHAPKHO ON CHITIETPHIEUNHAPKHO.MaPhieuNhap= PHIEUNHAPKHO.MaPhieuNhap 
   WHERE CHITIETPHIEUNHAPKHO.MaPhieuNhap=  @maphieu

   SELECT #tmpt.MaPhieuNhap, #tmpt.MaDM, N''+#tmpt.TenSP+'' AS TenSP , #tmpt.SoLuong,#tmpt.GiaNhap, #tmpt.GiaBan, #tmpt.NgayLapHD, NHACUNGCAP.TenNCC
   INTO #tmpt2 FROM #tmpt INNER JOIN NHACUNGCAP ON NHACUNGCAP.MaNCC= #tmpt.MaNCC

   SELECT #tmpt2.MaPhieuNhap, #tmpt2.TenSP,  #tmpt2.TenNCC, DANHMUC.TenDM, #tmpt2.SoLuong, #tmpt2.GiaNhap, #tmpt2.GiaBan, #tmpt2.NgayLapHD
   FROM #tmpt2 INNER JOIN DANHMUC ON #tmpt2.MaDM = DANHMUC.MaDM WHERE #tmpt2.MaPhieuNhap=@maphieu
GO
