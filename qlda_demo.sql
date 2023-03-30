USE [QLDA_DATA]
GO
/****** Object:  Table [dbo].[CHITIETPHIEUNHAPKHO]    Script Date: 3/30/2023 1:10:36 PM ******/
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
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 3/30/2023 1:10:36 PM ******/
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
/****** Object:  Table [dbo].[CHUCVU]    Script Date: 3/30/2023 1:10:36 PM ******/
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
/****** Object:  Table [dbo].[DANHMUC]    Script Date: 3/30/2023 1:10:36 PM ******/
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
/****** Object:  Table [dbo].[HOADON]    Script Date: 3/30/2023 1:10:36 PM ******/
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
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 3/30/2023 1:10:36 PM ******/
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
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 3/30/2023 1:10:36 PM ******/
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
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 3/30/2023 1:10:36 PM ******/
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
/****** Object:  Table [dbo].[PHIEUNHAPKHO]    Script Date: 3/30/2023 1:10:36 PM ******/
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
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 3/30/2023 1:10:36 PM ******/
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
/****** Object:  Table [dbo].[USERNV]    Script Date: 3/30/2023 1:10:36 PM ******/
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
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'cdaff348-69b0-451d-bdb1-12aa8882d419', N'cef29b45-2425-4748-b80a-f869aac0ba74', 1111, CAST(111111.0000 AS Numeric(19, 4)), CAST(123444321.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'ee65adb1-190c-4ae2-a304-16bb15f5c267', N'a3eea030-cb61-4bc3-8a19-627476629a46', 1, CAST(2.0000 AS Numeric(19, 4)), CAST(2.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'86e83d45-ccf1-4317-abf6-61aec9fb0989', N'cef29b45-2425-4748-b80a-f869aac0ba74', 1, CAST(222.0000 AS Numeric(19, 4)), CAST(222.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETPHIEUNHAPKHO] ([MaPhieuNhap], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'325c3521-d9da-4bb9-8706-9ee79a54c698', N'592a766d-1f5d-44d0-b6c8-2f1489e7bc6a', 1, CAST(2.0000 AS Numeric(19, 4)), CAST(2.0000 AS Numeric(19, 4)))
GO
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'68e77f5e-f892-4f5c-a79d-05e369cd4b02', N'592a766d-1f5d-44d0-b6c8-2f1489e7bc6a', 1, CAST(3.0000 AS Numeric(19, 4)), CAST(3.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'c4651334-2eb8-44ee-9fd9-0f2c214aa509', N'592a766d-1f5d-44d0-b6c8-2f1489e7bc6a', 7, CAST(3.0000 AS Numeric(19, 4)), CAST(21.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'723742f8-6b2e-4750-b8f6-1192cfc2c975', N'592a766d-1f5d-44d0-b6c8-2f1489e7bc6a', 2, CAST(3.0000 AS Numeric(19, 4)), CAST(6.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'e213b099-5ea3-48ec-afc0-2d2890f207a7', N'a3eea030-cb61-4bc3-8a19-627476629a46', 1, CAST(3.0000 AS Numeric(19, 4)), CAST(3.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'12bc65fc-9f01-4d94-8523-34f5e48af775', N'592a766d-1f5d-44d0-b6c8-2f1489e7bc6a', 10, CAST(3.0000 AS Numeric(19, 4)), CAST(30.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'c9967b7e-0e6b-47c4-b259-3933b922de07', N'592a766d-1f5d-44d0-b6c8-2f1489e7bc6a', 1, CAST(3.0000 AS Numeric(19, 4)), CAST(3.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'2efd69e2-b222-46a8-8b13-4f2d5ec657d6', N'592a766d-1f5d-44d0-b6c8-2f1489e7bc6a', 1, CAST(3.0000 AS Numeric(19, 4)), CAST(3.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'95a1f116-c237-4abc-9e43-614d9e3f86ce', N'592a766d-1f5d-44d0-b6c8-2f1489e7bc6a', 10, CAST(3.0000 AS Numeric(19, 4)), CAST(30.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'6ae2da09-e777-4ea2-9c19-93656d011361', N'592a766d-1f5d-44d0-b6c8-2f1489e7bc6a', 2, CAST(3.0000 AS Numeric(19, 4)), CAST(6.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'd770e188-0bec-4e45-a036-ab450ac833cb', N'cef29b45-2425-4748-b80a-f869aac0ba74', 2, CAST(2222.0000 AS Numeric(19, 4)), CAST(4444.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'459f7fde-8ddb-4a21-aab0-bd4535c8a5db', N'592a766d-1f5d-44d0-b6c8-2f1489e7bc6a', 1, CAST(3.0000 AS Numeric(19, 4)), CAST(3.0000 AS Numeric(19, 4)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'e8c2f907-0ceb-403d-8724-dbb30654cc38', N'592a766d-1f5d-44d0-b6c8-2f1489e7bc6a', 10, CAST(3.0000 AS Numeric(19, 4)), CAST(30.0000 AS Numeric(19, 4)))
GO
SET IDENTITY_INSERT [dbo].[CHUCVU] ON 

INSERT [dbo].[CHUCVU] ([MaCV], [TenCV], [role]) VALUES (1, N'Adnin', N'admin')
INSERT [dbo].[CHUCVU] ([MaCV], [TenCV], [role]) VALUES (2, N'Nhân viên bán hàng', N'nvbh')
INSERT [dbo].[CHUCVU] ([MaCV], [TenCV], [role]) VALUES (3, N'Nhân viên kho', N'nvkho')
SET IDENTITY_INSERT [dbo].[CHUCVU] OFF
GO
SET IDENTITY_INSERT [dbo].[DANHMUC] ON 

INSERT [dbo].[DANHMUC] ([MaDM], [TenDM]) VALUES (1, N'Khác')
INSERT [dbo].[DANHMUC] ([MaDM], [TenDM]) VALUES (3, N'danh mục 4')
INSERT [dbo].[DANHMUC] ([MaDM], [TenDM]) VALUES (4, N'danh mục 33')
SET IDENTITY_INSERT [dbo].[DANHMUC] OFF
GO
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'e45e59e4-1d29-4d1b-a3a7-03b3ded2daf5', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:56:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'68e77f5e-f892-4f5c-a79d-05e369cd4b02', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:51:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'c4651334-2eb8-44ee-9fd9-0f2c214aa509', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T13:06:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'723742f8-6b2e-4750-b8f6-1192cfc2c975', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:37:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'84cd70bc-c70f-40d1-a3f2-1e1071702100', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:50:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'823ecbad-8a34-4c13-9b5c-205510dbc935', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:54:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'e213b099-5ea3-48ec-afc0-2d2890f207a7', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'8901b05b-6fb5-4eb9-b962-c5ef08bc41b0', CAST(N'2023-03-30T12:19:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'12bc65fc-9f01-4d94-8523-34f5e48af775', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:45:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'c9967b7e-0e6b-47c4-b259-3933b922de07', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:53:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'2efd69e2-b222-46a8-8b13-4f2d5ec657d6', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:35:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'a348152d-06c8-45b4-a218-525ff68206d0', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:40:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'95a1f116-c237-4abc-9e43-614d9e3f86ce', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:31:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'18e91197-d2d7-4fad-9d77-86960e18c372', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'8901b05b-6fb5-4eb9-b962-c5ef08bc41b0', CAST(N'2023-03-30T12:17:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'2b2486f5-321c-4edd-86cf-8d5897ace25e', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:47:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'6ae2da09-e777-4ea2-9c19-93656d011361', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:38:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'6b4cc6f3-1a83-4f03-b6f4-99004ac7c930', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:52:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'd770e188-0bec-4e45-a036-ab450ac833cb', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'8901b05b-6fb5-4eb9-b962-c5ef08bc41b0', CAST(N'2023-03-30T12:03:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'459f7fde-8ddb-4a21-aab0-bd4535c8a5db', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:25:00' AS SmallDateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [NgayLapHD]) VALUES (N'e8c2f907-0ceb-403d-8724-dbb30654cc38', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', CAST(N'2023-03-30T12:29:00' AS SmallDateTime))
GO
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [Sdt], [GioiTinh], [DiaChi]) VALUES (N'8901b05b-6fb5-4eb9-b962-c5ef08bc41b0', N'khách hàng 01', N'0345595334', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [Sdt], [GioiTinh], [DiaChi]) VALUES (N'fd926912-e40d-4650-b1f4-ce1bf156fbe1', N'f', N'0345595444', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] ON 

INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Sdt], [DiaChi]) VALUES (1, N'nhà cung cấp', N'0345595334', N'việt nam')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Sdt], [DiaChi]) VALUES (2, N'nhà cung cấp 094', N'0345595334', N'việt nam')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Sdt], [DiaChi]) VALUES (3, N'nhà cung cấp 1', N'0232328633', N'Hà Nội')
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] OFF
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [MaCV], [TenNV], [Sdt], [GioiTinh], [DiaChi]) VALUES (N'2118b555-a2b7-4b39-9860-9f97c858f4a7', 2, N'Nguyễn Hoàng Anh', NULL, NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MaNV], [MaCV], [TenNV], [Sdt], [GioiTinh], [DiaChi]) VALUES (N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 1, N'Trần Long', N'0345595332', NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MaNV], [MaCV], [TenNV], [Sdt], [GioiTinh], [DiaChi]) VALUES (N'd59163b4-8687-4e4d-acf3-a98901304992', 2, N'123', N'1234567890', NULL, N'v?nh phúc')
INSERT [dbo].[NHANVIEN] ([MaNV], [MaCV], [TenNV], [Sdt], [GioiTinh], [DiaChi]) VALUES (N'27fbf2b9-0e16-4628-9a05-bbcea3e2295d', 3, N'Nguyễn Phương Linh', NULL, NULL, NULL)
GO
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'cdaff348-69b0-451d-bdb1-12aa8882d419', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 1, CAST(N'2023-03-30T12:16:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'ee65adb1-190c-4ae2-a304-16bb15f5c267', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 2, CAST(N'2023-03-30T11:54:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'86e83d45-ccf1-4317-abf6-61aec9fb0989', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 3, CAST(N'2023-03-30T12:01:00' AS SmallDateTime))
INSERT [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap], [MaNV], [MaNCC], [NgayLapHD]) VALUES (N'325c3521-d9da-4bb9-8706-9ee79a54c698', N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', 2, CAST(N'2023-03-30T11:58:00' AS SmallDateTime))
GO
INSERT [dbo].[SANPHAM] ([MaSP], [MaDM], [TenSP], [GiaNhap], [GiaBan], [SoLuong]) VALUES (N'592a766d-1f5d-44d0-b6c8-2f1489e7bc6a', 1, N'nh?p s?n ph?m 01', CAST(2.0000 AS Numeric(19, 4)), CAST(3.0000 AS Numeric(19, 4)), 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaDM], [TenSP], [GiaNhap], [GiaBan], [SoLuong]) VALUES (N'a3eea030-cb61-4bc3-8a19-627476629a46', 1, N's?n ph?m 01', CAST(2.0000 AS Numeric(19, 4)), CAST(3.0000 AS Numeric(19, 4)), 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaDM], [TenSP], [GiaNhap], [GiaBan], [SoLuong]) VALUES (N'cef29b45-2425-4748-b80a-f869aac0ba74', 1, N'sản phẩm 012', CAST(111111.0000 AS Numeric(19, 4)), CAST(111111.0000 AS Numeric(19, 4)), 0)
GO
SET IDENTITY_INSERT [dbo].[USERNV] ON 

INSERT [dbo].[USERNV] ([id], [MaNV], [usename], [password]) VALUES (1, N'36e7062c-3a63-4a3a-8253-a2a36a67ea4d', N'admin', N'1                   ')
INSERT [dbo].[USERNV] ([id], [MaNV], [usename], [password]) VALUES (2, N'2118b555-a2b7-4b39-9860-9f97c858f4a7', N'nhanvien1', N'2                   ')
INSERT [dbo].[USERNV] ([id], [MaNV], [usename], [password]) VALUES (3, N'27fbf2b9-0e16-4628-9a05-bbcea3e2295d', N'nhanvien2', N'1234                ')
INSERT [dbo].[USERNV] ([id], [MaNV], [usename], [password]) VALUES (5, N'd59163b4-8687-4e4d-acf3-a98901304992', N'123', N'1                   ')
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
/****** Object:  StoredProcedure [dbo].[ADDNHANVIEN]    Script Date: 3/30/2023 1:10:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[CHECK_USER]    Script Date: 3/30/2023 1:10:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[DELETEHOADON]    Script Date: 3/30/2023 1:10:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[DELETEPHIEUNHAPKHO]    Script Date: 3/30/2023 1:10:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GETSANPHAM]    Script Date: 3/30/2023 1:10:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[HOADONBAN]    Script Date: 3/30/2023 1:10:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[HUYTAOHOADON]    Script Date: 3/30/2023 1:10:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[NHAPKHOSANPHAM]    Script Date: 3/30/2023 1:10:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[TAOHOADON]    Script Date: 3/30/2023 1:10:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[UPDATEHOADON]    Script Date: 3/30/2023 1:10:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[UPDATENHAPKHO]    Script Date: 3/30/2023 1:10:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[XOADANHMUC]    Script Date: 3/30/2023 1:10:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[XOASANPHAM]    Script Date: 3/30/2023 1:10:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[XUATTHONGTINPHIEUNHAP]    Script Date: 3/30/2023 1:10:36 PM ******/
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
