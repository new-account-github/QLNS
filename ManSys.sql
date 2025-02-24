USE [QLNS]
GO
/****** Object:  Table [dbo].[BangCong]    Script Date: 12/10/2022 9:54:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangCong](
	[MaBC] [nvarchar](5) NOT NULL,
	[NgayTao] [date] NULL,
	[GioLam] [float] NULL,
	[MaNV] [nvarchar](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaoHiem]    Script Date: 12/10/2022 9:54:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoHiem](
	[SoBH] [nvarchar](50) NOT NULL,
	[NgayCap] [date] NULL,
	[NoiCap] [nvarchar](50) NULL,
	[NoiKhamBenh] [nvarchar](50) NULL,
	[MaNV] [nvarchar](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[SoBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoPhan]    Script Date: 12/10/2022 9:54:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoPhan](
	[IDBP] [nvarchar](5) NOT NULL,
	[TenBP] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDBP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HopDong]    Script Date: 12/10/2022 9:54:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDong](
	[IDHD] [nvarchar](5) NOT NULL,
	[NgayBD] [date] NULL,
	[NgayKT] [date] NULL,
	[NgayKy] [date] NULL,
	[NoiDung] [nvarchar](255) NULL,
	[MucLuong] [int] NULL,
	[MaNV] [nvarchar](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KTKL]    Script Date: 12/10/2022 9:54:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KTKL](
	[ID] [nvarchar](5) NOT NULL,
	[NoiDung] [nvarchar](100) NULL,
	[Ngay] [date] NULL,
	[Loai] [bit] NULL,
	[MaNV] [nvarchar](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/10/2022 9:54:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](7) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [date] NULL,
	[DienThoai] [nvarchar](50) NULL,
	[CCCD] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[HinhAnh] [nvarchar](255) NULL,
	[IDPB] [nvarchar](5) NULL,
	[IDBP] [nvarchar](5) NULL,
	[IDTD] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 12/10/2022 9:54:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[IDPB] [nvarchar](5) NOT NULL,
	[TenPB] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDPB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhuCap_NV]    Script Date: 12/10/2022 9:54:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuCap_NV](
	[IDPC] [nvarchar](10) NULL,
	[TenPC] [nvarchar](50) NULL,
	[Ngay] [date] NULL,
	[SoTien] [float] NULL,
	[MaNV] [nvarchar](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/10/2022 9:54:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenDN] [nvarchar](50) NOT NULL,
	[Pass] [nvarchar](50) NULL,
	[VaiTro] [bit] NULL,
	[MaNV] [nvarchar](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[TenDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TangCa]    Script Date: 12/10/2022 9:54:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TangCa](
	[IDTC] [nvarchar](5) NOT NULL,
	[NgayTangCa] [date] NULL,
	[SoGio] [float] NULL,
	[LoaiCa] [bit] NULL,
	[MaNV] [nvarchar](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDTC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrinhDo]    Script Date: 12/10/2022 9:54:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrinhDo](
	[IDTD] [int] NOT NULL,
	[TenTrinhDo] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDTD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UngLuong]    Script Date: 12/10/2022 9:54:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UngLuong](
	[IDUL] [nvarchar](5) NOT NULL,
	[NgayUL] [date] NULL,
	[SoTien] [float] NULL,
	[TrangThai] [bit] NULL,
	[MaNV] [nvarchar](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDUL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BangCong] ([MaBC], [NgayTao], [GioLam], [MaNV]) VALUES (N'BC01', CAST(N'2022-11-29' AS Date), 158, N'NV01')
INSERT [dbo].[BangCong] ([MaBC], [NgayTao], [GioLam], [MaNV]) VALUES (N'BC02', CAST(N'2022-11-28' AS Date), 150, N'NV02')
INSERT [dbo].[BangCong] ([MaBC], [NgayTao], [GioLam], [MaNV]) VALUES (N'BC03', CAST(N'2022-07-15' AS Date), 128.3, N'NV03')
GO
INSERT [dbo].[BaoHiem] ([SoBH], [NgayCap], [NoiCap], [NoiKhamBenh], [MaNV]) VALUES (N'036529874126', CAST(N'2019-11-20' AS Date), N'TTYT quận Đống Đa', N'Bệnh Viện Từ Dũ', N'NV03')
INSERT [dbo].[BaoHiem] ([SoBH], [NgayCap], [NoiCap], [NoiKhamBenh], [MaNV]) VALUES (N'036529874127', CAST(N'2019-11-20' AS Date), N'TTYT quận Đống Đa', N'Bệnh Viện Từ Dũ', N'NV04')
INSERT [dbo].[BaoHiem] ([SoBH], [NgayCap], [NoiCap], [NoiKhamBenh], [MaNV]) VALUES (N'036529874621', CAST(N'2019-11-10' AS Date), N'TTYT quận Đống Đa', N'Bệnh Viện Từ Dũ', N'NV02')
INSERT [dbo].[BaoHiem] ([SoBH], [NgayCap], [NoiCap], [NoiKhamBenh], [MaNV]) VALUES (N'036963586307', CAST(N'2018-01-01' AS Date), N'Phòng khám 107 Tôn Đức Thắng', N'Bệnh viện Đa khoa Long Xuyên', N'NV06')
INSERT [dbo].[BaoHiem] ([SoBH], [NgayCap], [NoiCap], [NoiKhamBenh], [MaNV]) VALUES (N'036963586378', CAST(N'2018-01-01' AS Date), N'Phòng khám 107 Tôn Đức Thắng', N'Bệnh viện Đa khoa Long Xuyên', N'NV01')
INSERT [dbo].[BaoHiem] ([SoBH], [NgayCap], [NoiCap], [NoiKhamBenh], [MaNV]) VALUES (N'036963586379', CAST(N'2018-01-01' AS Date), N'Phòng khám 107 Tôn Đức Thắng', N'Bệnh viện Đa khoa Long Xuyên', N'NV05')
GO
INSERT [dbo].[BoPhan] ([IDBP], [TenBP]) VALUES (N'BP01', N'Bộ Phận Kinh Doanh')
INSERT [dbo].[BoPhan] ([IDBP], [TenBP]) VALUES (N'BP02', N'Bộ Phận Kế Toán')
INSERT [dbo].[BoPhan] ([IDBP], [TenBP]) VALUES (N'BP03', N'Bộ Phận Marketing')
GO
INSERT [dbo].[HopDong] ([IDHD], [NgayBD], [NgayKT], [NgayKy], [NoiDung], [MucLuong], [MaNV]) VALUES (N'HD01', CAST(N'2021-03-01' AS Date), CAST(N'2021-09-01' AS Date), CAST(N'2021-02-19' AS Date), N'null', 20000000, N'NV01')
INSERT [dbo].[HopDong] ([IDHD], [NgayBD], [NgayKT], [NgayKy], [NoiDung], [MucLuong], [MaNV]) VALUES (N'HD02', CAST(N'2020-04-01' AS Date), CAST(N'2020-12-01' AS Date), CAST(N'2020-03-11' AS Date), N'null', 15000000, N'NV02')
INSERT [dbo].[HopDong] ([IDHD], [NgayBD], [NgayKT], [NgayKy], [NoiDung], [MucLuong], [MaNV]) VALUES (N'HD03', CAST(N'2022-02-01' AS Date), CAST(N'2022-11-01' AS Date), CAST(N'2022-01-11' AS Date), N'null', 10000000, N'NV03')
INSERT [dbo].[HopDong] ([IDHD], [NgayBD], [NgayKT], [NgayKy], [NoiDung], [MucLuong], [MaNV]) VALUES (N'HD04', CAST(N'2020-04-01' AS Date), CAST(N'2020-12-01' AS Date), CAST(N'2020-03-11' AS Date), N'null', 0, N'NV02')
GO
INSERT [dbo].[KTKL] ([ID], [NoiDung], [Ngay], [Loai], [MaNV]) VALUES (N'K01', N'null', CAST(N'2022-09-09' AS Date), 0, N'NV01')
INSERT [dbo].[KTKL] ([ID], [NoiDung], [Ngay], [Loai], [MaNV]) VALUES (N'K02', N'null', CAST(N'2022-09-12' AS Date), 1, N'NV02')
INSERT [dbo].[KTKL] ([ID], [NoiDung], [Ngay], [Loai], [MaNV]) VALUES (N'K03', N'null', CAST(N'2022-09-10' AS Date), 0, N'NV03')
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DienThoai], [CCCD], [DiaChi], [HinhAnh], [IDPB], [IDBP], [IDTD]) VALUES (N'NV01', N'Trần Văn Tèo', 0, CAST(N'2000-09-03' AS Date), N'0987773843', N'064203226712', N'Q4 Tp.Hồ Chí Minh', N'Refresh.png', N'PB01', N'BP01', 1)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DienThoai], [CCCD], [DiaChi], [HinhAnh], [IDPB], [IDBP], [IDTD]) VALUES (N'NV02', N'Trần Ngọc Minh Thúy', 1, CAST(N'1997-12-12' AS Date), N'0363727612', N'064566596712', N'Q7 Tp.Hồ Chí Minh', N'null', N'PB02', N'BP02', 2)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DienThoai], [CCCD], [DiaChi], [HinhAnh], [IDPB], [IDBP], [IDTD]) VALUES (N'NV03', N'Nguyễn Trần Thanh Tâm', 0, CAST(N'1995-06-07' AS Date), N'0989899120', N'064250946712', N'Q1 Tp.Hồ Chí Minh', NULL, N'PB03', N'BP03', 3)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DienThoai], [CCCD], [DiaChi], [HinhAnh], [IDPB], [IDBP], [IDTD]) VALUES (N'NV04', N'Trần Văn Tèo', 0, CAST(N'2000-09-03' AS Date), N'0987773843', N'064203226712', N'Q4 Tp.Hồ Chí Minh', NULL, N'PB01', N'BP01', 1)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DienThoai], [CCCD], [DiaChi], [HinhAnh], [IDPB], [IDBP], [IDTD]) VALUES (N'NV05', N'abcd', 0, CAST(N'2002-12-14' AS Date), N'0217896541', N'021154865421', N'TP hcm', N'Calendar.png', N'PB01', N'BP02', 2)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DienThoai], [CCCD], [DiaChi], [HinhAnh], [IDPB], [IDBP], [IDTD]) VALUES (N'NV06', N'abc', 1, CAST(N'2002-12-14' AS Date), N'0217896541', N'021154865421', N'TP hcm', N'Conference.png', N'PB01', N'BP02', 2)
GO
INSERT [dbo].[PhongBan] ([IDPB], [TenPB]) VALUES (N'PB01', N'Phòng Nhân Sự')
INSERT [dbo].[PhongBan] ([IDPB], [TenPB]) VALUES (N'PB02', N'Phòng Hành Chính')
INSERT [dbo].[PhongBan] ([IDPB], [TenPB]) VALUES (N'PB03', N'Phòng Marketing')
GO
INSERT [dbo].[PhuCap_NV] ([IDPC], [TenPC], [Ngay], [SoTien], [MaNV]) VALUES (N'PC01', N'Ph? c?p thâm niên', CAST(N'2022-09-20' AS Date), 20000000, N'NV01')
INSERT [dbo].[PhuCap_NV] ([IDPC], [TenPC], [Ngay], [SoTien], [MaNV]) VALUES (N'PC02', N'Ph? c?p ch?c v?', CAST(N'2022-08-17' AS Date), 5000000, N'NV02')
INSERT [dbo].[PhuCap_NV] ([IDPC], [TenPC], [Ngay], [SoTien], [MaNV]) VALUES (N'PC03', N'Ph? c?p trách nhi?m', CAST(N'2022-07-17' AS Date), 2000000, N'NV03')
GO
INSERT [dbo].[TaiKhoan] ([TenDN], [Pass], [VaiTro], [MaNV]) VALUES (N'abc', N'123', 0, N'NV04')
INSERT [dbo].[TaiKhoan] ([TenDN], [Pass], [VaiTro], [MaNV]) VALUES (N'TamNTT', N'789', 1, N'NV03')
INSERT [dbo].[TaiKhoan] ([TenDN], [Pass], [VaiTro], [MaNV]) VALUES (N'TeoNV', N'123', 0, N'NV01')
INSERT [dbo].[TaiKhoan] ([TenDN], [Pass], [VaiTro], [MaNV]) VALUES (N'ThuyTNM', N'456', 0, N'NV02')
GO
INSERT [dbo].[TangCa] ([IDTC], [NgayTangCa], [SoGio], [LoaiCa], [MaNV]) VALUES (N'TC01', CAST(N'2022-09-12' AS Date), 36, 0, N'NV01')
INSERT [dbo].[TangCa] ([IDTC], [NgayTangCa], [SoGio], [LoaiCa], [MaNV]) VALUES (N'TC02', CAST(N'2022-06-20' AS Date), 53, 1, N'NV02')
INSERT [dbo].[TangCa] ([IDTC], [NgayTangCa], [SoGio], [LoaiCa], [MaNV]) VALUES (N'TC03', CAST(N'2022-03-28' AS Date), 24, 1, N'NV03')
INSERT [dbo].[TangCa] ([IDTC], [NgayTangCa], [SoGio], [LoaiCa], [MaNV]) VALUES (N'TC04', CAST(N'2022-10-15' AS Date), 2, 0, N'NV01')
GO
INSERT [dbo].[TrinhDo] ([IDTD], [TenTrinhDo]) VALUES (1, N'Đại học')
INSERT [dbo].[TrinhDo] ([IDTD], [TenTrinhDo]) VALUES (2, N'Cao Đẳng')
INSERT [dbo].[TrinhDo] ([IDTD], [TenTrinhDo]) VALUES (3, N'Trung Cấp')
GO
INSERT [dbo].[UngLuong] ([IDUL], [NgayUL], [SoTien], [TrangThai], [MaNV]) VALUES (N'UL01', CAST(N'2022-09-10' AS Date), 6000000, 1, N'NV01')
INSERT [dbo].[UngLuong] ([IDUL], [NgayUL], [SoTien], [TrangThai], [MaNV]) VALUES (N'UL02', CAST(N'2022-08-05' AS Date), 9000000, 1, N'NV02')
INSERT [dbo].[UngLuong] ([IDUL], [NgayUL], [SoTien], [TrangThai], [MaNV]) VALUES (N'UL03', CAST(N'2022-07-09' AS Date), 12000000, 1, N'NV03')
GO
ALTER TABLE [dbo].[BangCong]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[BaoHiem]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[KTKL]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([IDBP])
REFERENCES [dbo].[BoPhan] ([IDBP])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([IDPB])
REFERENCES [dbo].[PhongBan] ([IDPB])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([IDTD])
REFERENCES [dbo].[TrinhDo] ([IDTD])
GO
ALTER TABLE [dbo].[PhuCap_NV]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TangCa]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[UngLuong]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
/****** Object:  StoredProcedure [dbo].[sp_BoPhan]    Script Date: 12/10/2022 9:54:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_BoPhan] (@IDBP  nvarchar(30) )
as begin
	select MaNV,
	HoTen,
	NhanVien.IDBP,
	BoPhan.TenBP TenBP
	from NhanVien join BoPhan on NhanVien.IDBP = BoPhan.IDBP
	where NhanVien.IDBP =  @IDBP
end
GO
/****** Object:  StoredProcedure [dbo].[sp_PhongBan]    Script Date: 12/10/2022 9:54:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_PhongBan] (@IDPB  nvarchar(30) )
as begin
	select MaNV,
	HoTen,
	NhanVien.IDPB,
	PhongBan.TenPB TenPB
	from NhanVien join PhongBan on NhanVien.IDPB = PhongBan.IDPB
	where NhanVien.IDPB =  @IDPB
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeGioLam]    Script Date: 12/10/2022 9:54:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ThongKeGioLam]
as begin
select bc.MaNV,  
		nv.HoTen,
	   bc.GioLam,
	   tc.SoGio,
	   sum(bc.GioLam+tc.SoGio) TongGio 
	   from		
				BangCong bc join TangCa tc on bc.MaNV = tc.MaNV 
				join NhanVien nv on bc.MaNV = nv.MaNV
		group by bc.MaNV,  nv.HoTen,bc.GioLam,tc.SoGio
	   order by (bc.GioLam +tc.SoGio) desc
end 
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeLuong]    Script Date: 12/10/2022 9:54:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThongKeLuong]
as begin
		select TangCa.MaNV,
		HoTen,
		HopDong.MucLuong,
		TangCa.SoGio  GioTangCa,
		PhuCap_NV.SoTien TienPhuCap,
		(HopDong.MucLuong+ PhuCap_NV.SoTien + (TangCa.SoGio*20000)-UngLuong.SoTien) TongTien 
from 
		PhuCap_NV  join TangCa on PhuCap_NV.MaNV = TangCa.MaNV
		join NhanVien on PhuCap_NV.MaNV = NhanVien.MaNV
		join UngLuong ON UngLuong.MaNV = PhuCap_NV.MaNV
		join HopDong on HopDong.MaNV = PhuCap_NV.MaNV
		order by (HopDong.MucLuong+ PhuCap_NV.SoTien + (TangCa.SoGio*20000)-UngLuong.SoTien) DESC
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TrinhDo]    Script Date: 12/10/2022 9:54:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_TrinhDo] (@IDTD  int )
as begin
	select MaNV,
	HoTen,
	NhanVien.IDTD,
	TrinhDo.TenTrinhDo TenTD
	from NhanVien join TrinhDo on NhanVien.IDTD = TrinhDo.IDTD
	where NhanVien.IDTD  =  @IDTD
end
GO
