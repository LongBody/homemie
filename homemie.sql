USE [HomemieProject]
GO
/****** Object:  Table [dbo].[account]    Script Date: 12/13/2020 21:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[email] [varchar](255) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[role] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bookingDetail]    Script Date: 12/13/2020 21:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bookingDetail](
	[email] [varchar](255) NULL,
	[idRoom] [int] NOT NULL,
	[idBooking] [int] IDENTITY(0,1) NOT NULL,
	[imageRoom] [nvarchar](255) NULL,
	[dobBefore] [varchar](255) NULL,
	[dobAfter] [varchar](255) NULL,
	[quantity] [int] NULL,
	[price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idRoom] ASC,
	[idBooking] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[carRent]    Script Date: 12/13/2020 21:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carRent](
	[email] [varchar](255) NULL,
	[idBooking] [int] IDENTITY(0,1) NOT NULL,
	[dobBefore] [varchar](255) NULL,
	[dobAfter] [varchar](255) NULL,
	[quantity] [int] NULL,
	[price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idBooking] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[likeList]    Script Date: 12/13/2020 21:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[likeList](
	[idList] [int] IDENTITY(0,1) NOT NULL,
	[email] [varchar](255) NULL,
	[idRoom] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[place]    Script Date: 12/13/2020 21:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[place](
	[name] [nvarchar](255) NOT NULL,
	[imageLink] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room]    Script Date: 12/13/2020 21:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[roomName] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[searchName] [varchar](255) NULL,
	[detailImageRoom1] [varchar](100) NULL,
	[detailImageRoom2] [varchar](100) NULL,
	[detailImageRoom3] [varchar](100) NULL,
	[price] [int] NULL,
	[star] [int] NULL,
	[quantityBed] [int] NULL,
	[imageRoom] [varchar](255) NULL,
	[descriptions] [nvarchar](1000) NULL,
	[isLike] [bit] NULL,
	[isActive] [bit] NULL,
	[isExist] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[account] ([email], [name], [phone], [password], [role]) VALUES (N'admin@gmail.com', N'Admin', N'012345678', N'admin', N'admin')
INSERT [dbo].[account] ([email], [name], [phone], [password], [role]) VALUES (N'jack2309@gmail.com', N'JackMLK', N'0123456787', N'123456', N'user')
INSERT [dbo].[account] ([email], [name], [phone], [password], [role]) VALUES (N'linh31@gmail.com', N'Linh Nguyễn', N'034568741', N'linhcute', N'user')
INSERT [dbo].[account] ([email], [name], [phone], [password], [role]) VALUES (N'longnt1120@gmail.com', N'long', N'0344914282', N'123456', N'user')
INSERT [dbo].[account] ([email], [name], [phone], [password], [role]) VALUES (N'longnthe140271@fpt.edu.vn', N'longnthe140271', N'01277284569', N'123456', N'user')
INSERT [dbo].[account] ([email], [name], [phone], [password], [role]) VALUES (N'ngocbich2000@gmail.com', N'Ngọc Bích cute', N'0941256987', N'ngockon', N'user')
INSERT [dbo].[account] ([email], [name], [phone], [password], [role]) VALUES (N'nhotim567@gmail.com', N'NhoTimCute', N'01277281947', N'123456', N'user')
INSERT [dbo].[account] ([email], [name], [phone], [password], [role]) VALUES (N'nhoxanh123@gmail.com', N'NhoXanh123', N'034491789', N'123456', N'user')
INSERT [dbo].[account] ([email], [name], [phone], [password], [role]) VALUES (N'orihiro12@gmail.com', N'Orihiro', N'0234876123', N'123456', N'user')
SET IDENTITY_INSERT [dbo].[bookingDetail] ON 

INSERT [dbo].[bookingDetail] ([email], [idRoom], [idBooking], [imageRoom], [dobBefore], [dobAfter], [quantity], [price]) VALUES (N'jack2309@gmail.com', 1, 8, N'https://cdn.luxstay.com/users/401239/9Q2V6sbFm1M-zKG4ABMTS2P5.jpg', N'16/11/2020', N'18/11/2020', 2, 1980000)
INSERT [dbo].[bookingDetail] ([email], [idRoom], [idBooking], [imageRoom], [dobBefore], [dobAfter], [quantity], [price]) VALUES (N'orihiro12@gmail.com', 2, 10, N'https://cdn.luxstay.com/users/13092/cn1rnsr3mS6na22vBIPG0Mh4.jpeg', N'15/11/2020', N'16/11/2020', 1, 9980000)
INSERT [dbo].[bookingDetail] ([email], [idRoom], [idBooking], [imageRoom], [dobBefore], [dobAfter], [quantity], [price]) VALUES (N'ngocbich2000@gmail.com', 21, 3, N'https://cdn.luxstay.com/rooms/16146/large/1539778855_40481639_10215168742346046_1845357532227305472_n.jpg', N'17/11/2020', N'19/11/2020', 2, 1100000)
INSERT [dbo].[bookingDetail] ([email], [idRoom], [idBooking], [imageRoom], [dobBefore], [dobAfter], [quantity], [price]) VALUES (N'nhoxanh123@gmail.com', 21, 6, N'https://cdn.luxstay.com/rooms/16146/large/1539778855_40481639_10215168742346046_1845357532227305472_n.jpg', N'15/11/2020', N'18/11/2020', 3, 1650000)
INSERT [dbo].[bookingDetail] ([email], [idRoom], [idBooking], [imageRoom], [dobBefore], [dobAfter], [quantity], [price]) VALUES (N'jack2309@gmail.com', 21, 7, N'https://cdn.luxstay.com/rooms/16146/large/1539778855_40481639_10215168742346046_1845357532227305472_n.jpg', N'15/11/2020', N'18/11/2020', 3, 1650000)
INSERT [dbo].[bookingDetail] ([email], [idRoom], [idBooking], [imageRoom], [dobBefore], [dobAfter], [quantity], [price]) VALUES (N'orihiro12@gmail.com', 21, 9, N'https://cdn.luxstay.com/rooms/16146/large/1539778855_40481639_10215168742346046_1845357532227305472_n.jpg', N'15/11/2020', N'18/11/2020', 3, 1650000)
INSERT [dbo].[bookingDetail] ([email], [idRoom], [idBooking], [imageRoom], [dobBefore], [dobAfter], [quantity], [price]) VALUES (N'ngocbich2000@gmail.com', 30, 2, N'https://cdn.luxstay.com/rooms/24888/large/room_24888_72_1557739633.jpg', N'15/11/2020', N'19/11/2020', 4, 3000000)
INSERT [dbo].[bookingDetail] ([email], [idRoom], [idBooking], [imageRoom], [dobBefore], [dobAfter], [quantity], [price]) VALUES (N'longnthe140271@fpt.edu.vn', 34, 5, N'https://cdn.luxstay.com/rooms/16622/large/1541408261_1541234349_can_ho_7jpg9jpgjpg', N'17/11/2020', N'20/11/2020', 3, 1410000)
INSERT [dbo].[bookingDetail] ([email], [idRoom], [idBooking], [imageRoom], [dobBefore], [dobAfter], [quantity], [price]) VALUES (N'longnt1120@gmail.com', 35, 0, N'https://cdn.luxstay.com/rooms/28061/large/room_28061_10_1572240748.jpg', N'16/11/2020', N'17/11/2020', 1, 636000)
SET IDENTITY_INSERT [dbo].[bookingDetail] OFF
SET IDENTITY_INSERT [dbo].[carRent] ON 

INSERT [dbo].[carRent] ([email], [idBooking], [dobBefore], [dobAfter], [quantity], [price]) VALUES (N'longnt1120@gmail.com', 0, N'15/11/2020', N'26/11/2020', 11, 15399989)
INSERT [dbo].[carRent] ([email], [idBooking], [dobBefore], [dobAfter], [quantity], [price]) VALUES (N'ngocbich2000@gmail.com', 1, N'17/11/2020', N'19/11/2020', 2, 2799998)
INSERT [dbo].[carRent] ([email], [idBooking], [dobBefore], [dobAfter], [quantity], [price]) VALUES (N'nhoxanh123@gmail.com', 2, N'15/11/2020', N'17/11/2020', 2, 2799998)
INSERT [dbo].[carRent] ([email], [idBooking], [dobBefore], [dobAfter], [quantity], [price]) VALUES (N'jack2309@gmail.com', 3, N'15/11/2020', N'17/11/2020', 2, 2799998)
INSERT [dbo].[carRent] ([email], [idBooking], [dobBefore], [dobAfter], [quantity], [price]) VALUES (N'orihiro12@gmail.com', 4, N'15/11/2020', N'17/11/2020', 2, 2799998)
SET IDENTITY_INSERT [dbo].[carRent] OFF
SET IDENTITY_INSERT [dbo].[likeList] ON 

INSERT [dbo].[likeList] ([idList], [email], [idRoom]) VALUES (13, N'longnt1120@gmail.com', 35)
INSERT [dbo].[likeList] ([idList], [email], [idRoom]) VALUES (26, N'ngocbich2000@gmail.com', 16)
INSERT [dbo].[likeList] ([idList], [email], [idRoom]) VALUES (29, N'longnthe140271@fpt.edu.vn', 15)
INSERT [dbo].[likeList] ([idList], [email], [idRoom]) VALUES (32, N'nhoxanh123@gmail.com', 21)
INSERT [dbo].[likeList] ([idList], [email], [idRoom]) VALUES (33, N'nhotim567@gmail.com', 35)
INSERT [dbo].[likeList] ([idList], [email], [idRoom]) VALUES (37, N'jack2309@gmail.com', 34)
INSERT [dbo].[likeList] ([idList], [email], [idRoom]) VALUES (41, N'orihiro12@gmail.com', 15)
INSERT [dbo].[likeList] ([idList], [email], [idRoom]) VALUES (43, N'orihiro12@gmail.com', 10)
INSERT [dbo].[likeList] ([idList], [email], [idRoom]) VALUES (38, N'jack2309@gmail.com', 15)
INSERT [dbo].[likeList] ([idList], [email], [idRoom]) VALUES (25, N'longnt1120@gmail.com', 17)
INSERT [dbo].[likeList] ([idList], [email], [idRoom]) VALUES (28, N'admin@gmail.com', 35)
INSERT [dbo].[likeList] ([idList], [email], [idRoom]) VALUES (30, N'nhoxanh123@gmail.com', 35)
INSERT [dbo].[likeList] ([idList], [email], [idRoom]) VALUES (34, N'nhotim567@gmail.com', 34)
INSERT [dbo].[likeList] ([idList], [email], [idRoom]) VALUES (40, N'orihiro12@gmail.com', 34)
INSERT [dbo].[likeList] ([idList], [email], [idRoom]) VALUES (22, N'longnt1120@gmail.com', 24)
INSERT [dbo].[likeList] ([idList], [email], [idRoom]) VALUES (36, N'jack2309@gmail.com', 35)
SET IDENTITY_INSERT [dbo].[likeList] OFF
INSERT [dbo].[place] ([name], [imageLink]) VALUES (N'Bà Rịa - Vũng Tàu', N'https://staticproxy.mytourcdn.com/0x0,q90/resources/pictures/cities/country1552984418.jpg')
INSERT [dbo].[place] ([name], [imageLink]) VALUES (N'Đà Lạt', N'https://res.cloudinary.com/longbody/image/upload/v1608642840/homemie/%C4%91%C3%A0_l%E1%BA%A1t_s1rjis.webp')
INSERT [dbo].[place] ([name], [imageLink]) VALUES (N'Đà Nẵng', N'https://res.cloudinary.com/longbody/image/upload/v1608642840/homemie/%C4%91%C3%A0_n%E1%BA%B5ng_sihnpu.webp')
INSERT [dbo].[place] ([name], [imageLink]) VALUES (N'Hạ Long', N'https://res.cloudinary.com/longbody/image/upload/v1608642840/homemie/h%E1%BA%A1_long_beub1d.webp')
INSERT [dbo].[place] ([name], [imageLink]) VALUES (N'Hà Nội', N'https://staticproxy.mytourcdn.com/0x0,q90/resources/pictures/cities/country1552983635.jpg')
INSERT [dbo].[place] ([name], [imageLink]) VALUES (N'Hồ Chí Minh', N'https://staticproxy.mytourcdn.com/0x0,q90/resources/pictures/cities/country1552983788.jpg')
INSERT [dbo].[place] ([name], [imageLink]) VALUES (N'Hội An', N'https://staticproxy.mytourcdn.com/0x0,q90/resources/pictures/cities/country1552984054.jpeg')
INSERT [dbo].[place] ([name], [imageLink]) VALUES (N'Huế', N'https://staticproxy.mytourcdn.com/0x0,q90/resources/pictures/cities/country1541584938.jpg')
INSERT [dbo].[place] ([name], [imageLink]) VALUES (N'Nha Trang', N'https://res.cloudinary.com/longbody/image/upload/v1608642840/homemie/nha_trang_knuiw8.webp')
INSERT [dbo].[place] ([name], [imageLink]) VALUES (N'Phan Thiết', N'https://res.cloudinary.com/longbody/image/upload/v1608642840/homemie/phan_thi%E1%BA%BFt_g8df9j.webp')
INSERT [dbo].[place] ([name], [imageLink]) VALUES (N'Phú Quốc', N'https://res.cloudinary.com/longbody/image/upload/v1608642840/homemie/ph%C3%BA_qu%E1%BB%91c_w31lrm.webp')
INSERT [dbo].[place] ([name], [imageLink]) VALUES (N'Sa Pa', N'https://res.cloudinary.com/longbody/image/upload/v1608643230/homemie/sapa_fj9fak.webp')
SET IDENTITY_INSERT [dbo].[room] ON 

INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (1, N'Homestay Đà Lạt L2', N'Đà lạt', N'da lat', N'https://cdn.luxstay.com/users/401239/9Q2V6sbFm1M-zKG4ABMTS2P5.jpg', N'https://cdn.luxstay.com/users/42940/QBgtvxCbi7I1-qMR7Cg7WcVv.jpg', N'https://cdn.luxstay.com/users/401239/2ZuHAlCdA8-BYtmrROfzy-Rp.jpg', 990000, 4, 1, N'https://cdn.luxstay.com/users/401239/9Q2V6sbFm1M-zKG4ABMTS2P5.jpg', N'Tọa lạc tại thành phố Đà Lạt, Nhà Mình Homestay có khu vườn.Chỗ nghỉ cách Biệt thự Hằng Nga (Ngôi nhà điên) khoảng 1,2 km và nằm gần Dinh Bảo Đại\Chỗ nghỉ cung cấp dịch vụ lễ tân 24 giờ và dịch vụ phòng cho khách.', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (2, N'White Villas 2', N'Đà lạt', N'da lat', N'https://cdn.luxstay.com/users/13092/cn1rnsr3mS6na22vBIPG0Mh4.jpeg', N'
https://cdn.luxstay.com/users/13092/Ybs6AeQbWYoe3qkijhc17nz7.jpeg', N'
https://cdn.luxstay.com/users/13092/O7Cmiz87Dc3iji6_RIkNwzvj.jpeg', 9980000, 5, 8, N'https://cdn.luxstay.com/users/13092/cn1rnsr3mS6na22vBIPG0Mh4.jpeg', N'Siêu phẩm Villa 8PN- với thiết kế hiện đại và sang trọng với đầy đủ tiện nghi mang lại cho bạn trải nghiệm với kì nghĩ thật tuyệt vời', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (3, N'TALAD homestay ', N'Đà lạt', N'da lat', N'https://cdn.luxstay.com/users/348778/XynwnkZkcaQQx3j3ap9bVdrw.jpg', N'
https://cdn.luxstay.com/users/348778/8BxkfUSQO5_5jgUbObpMSp3b.jpg', N'
https://cdn.luxstay.com/users/348778/badgTtoBFurWRcQkV8cPQrCy.JPG', 1500000, 5, 3, N'https://cdn.luxstay.com/users/348778/badgTtoBFurWRcQkV8cPQrCy.JPG', N'TALAD homestay nhà mình đượng rộng rãi xe ô tô vào thoải mái và có chỗ đậu xe nhé. Home gọn gàng với 3 phòng ngủ ấm cúng, 1 phòng bếp ăn siêu rộng và thoáng, 1 phòng khách và 4 toilet', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (4, N'Mái Lá Home ', N'Đà lạt', N'da lat', N'https://cdn.luxstay.com/rooms/40406/large/74673269_2480755258703823_1092616470099132416_n.jpg', N'
https://cdn.luxstay.com/rooms/40406/large/73523511_733734560435350_5002043200685211648_n.jpg', N'
https://cdn.luxstay.com/rooms/40406/large/76907123_1290770491094462_5585739954975145984_o.jpg', 1300000, 5, 1, N'https://cdn.luxstay.com/rooms/40406/large/73523511_733734560435350_5002043200685211648_n.jpg', N'Nằm ngay cung đường thung lũng đèn Đà Lạt bao la bát ngát cách Chợ Đà Lạt 4km, cách bến xe Thành Bưởi 2km, sát bên là các quán cafe nổi tiếng: Tiệm Cafe Túi Mơ To, Cheo veo, Panorama, Nấc thang lên thiên đường.', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (5, N'HOANGLEE VILLAS ', N'Đà lạt', N'da lat', N'https://cdn.luxstay.com/rooms/38192/large/ac9e1e232158d8068149.jpg', N'
https://cdn.luxstay.com/rooms/38192/large/b1bf2b721309ea57b318.jpg', N'
https://cdn.luxstay.com/rooms/38192/large/30d7e543da3823667a29.jpg', 12000000, 5, 10, N'https://cdn.luxstay.com/rooms/38192/large/d7fcf2c3ceb837e66ea9.jpg', N'Cách trung tâm chỉ hơn 5 phút chạy xe máy, nằm trên con đường Xô Viết Nghệ Tĩnh . Sức chứa: 4 phòng đơn, 4 phòng đôi, 2 phòng 3 giường (35 – 40 người)', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (6, N'Lâm Phượng Các', N'Đà lạt', N'da lat', N'https://cdn.luxstay.com/rooms/15700/large/1538725176_canh-view-13.jpg', N'
https://cdn.luxstay.com/rooms/15700/large/1538725174_view-phong-3.jpg', N'
https://cdn.luxstay.com/rooms/15700/large/1538725158_canh-view-3.jpg', 1250000, 4, 1, N'https://cdn.luxstay.com/rooms/15700/large/1538725247_canh-view-6.jpg', N'Superior Bungalow Garden View 2 được thiết kế và xây dựng mang đậm phong cách Châu Âu. Tọa lạc giữa lòng thành phố Đà Lạt ngàn hoa.', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (7, N'White Villas 1', N'Đà lạt', N'da lat', N'https://cdn.luxstay.com/users/13092/yW-ErWMuFK_Tcz1xBq4FAlT2.jpg', N'
https://cdn.luxstay.com/users/13092/SzbEgkzxG1Rq-JmW8JSeswLi.jpeg', N'
https://cdn.luxstay.com/users/13092/NDPyVYr42Q2QgSKe0jf8Pl_H.jpeg', 1400000, 5, 5, N'https://cdn.luxstay.com/users/13092/NDPyVYr42Q2QgSKe0jf8Pl_H.jpeg', N'WHITE VILLAS Nằm trong KDL Biệt thự nghĩ dưỡng Nam Hồ-Khu vực đặc biệt an ninh và yên tĩnh . Gồm 4 phòng ngủ: 3 Phòng 1 giường (1m8) và 2 phòng 2 giường (1m6)', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (8, N'Namto House 2', N'Đà Nẵng', N'da nang', N'https://cdn.luxstay.com/rooms/12710/large/1527158584_7E30C3DB-7F72-402E-A222-A32AE7131C69.JPG', N'
https://cdn.luxstay.com/rooms/12710/large/1527158585_17C2CA3A-131D-4D92-82AA-8CAAE66C5275.JPG', N'
https://cdn.luxstay.com/rooms/12710/large/1527158603_655D584D-2445-43B5-AE54-E45843AE1D10.JPG', 2500000, 5, 2, N'https://cdn.luxstay.com/rooms/12710/large/1527158585_17C2CA3A-131D-4D92-82AA-8CAAE66C5275.JPG', N'Vị trí tuyệt vời trong khoảng cách đi bộ đến tất cả các điểm nóng Đà Nẵng. Khám phá nhà hàng tuyệt vời Đà Nẵng, quán cà phê, quán bar, trung tâm mua sắm và cuộc sống về đêm chỉ cách nhà vài bước chân. Bạn sẽ yêu nơi của chúng tôi vì vị trí hoàn hảo, chiếc giường thoải mái và khu phố khá.', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (9, N'Durand 1', N'Đà Nẵng', N'da nang', N'https://cdn.luxstay.com/rooms/14642/large/1535622822_IMG_2979.JPG', N'
https://cdn.luxstay.com/rooms/14642/large/1535622822_IMG_2869.JPG', N'
https://cdn.luxstay.com/admins/18/KCJJQ9yP0Ru93Ua79HnsXwBN.png', 1240000, 4, 1, N'https://cdn.luxstay.com/admins/18/KCJJQ9yP0Ru93Ua79HnsXwBN.png', N'Durand cung cấp chỗ ở chất lượng dành cho gia đình vui vẻ và gần bãi biển . Durand là 1 trong 5 phòng của An Nam Villa Đà Nẵng', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (10, N'CITY CENTRE 03', N'Đà Nẵng', N'da nang', N'https://cdn.luxstay.com/rooms/11819/large/PVN_0222.JPG', N'
https://cdn.luxstay.com/rooms/11819/large/PVN_0165-2.JPG', N'
https://cdn.luxstay.com/rooms/11819/large/PVN_0206-2.JPG', 1700000, 4, 3, N'https://cdn.luxstay.com/rooms/11819/large/PVN_0206-2.JPG', N'Chỗ ở của chúng tôi với 3 phòng ngủ được thiết kế theo kiến trúc châu Âu nhất định sẽ khiến bạn hài lòng ngay từ lần đầu đặt chân đến đây', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (11, N'Somerset Apartment', N'Đà Nẵng', N'da nang', N'https://cdn.luxstay.com/rooms/14648/large/1535624475_IMG_2990.JPG', N'
https://cdn.luxstay.com/rooms/14648/large/1535624473_IMG_2991.JPG', N'
https://cdn.luxstay.com/rooms/14648/large/1535624472_IMG_2993.JPG', 3560000, 5, 2, N'https://cdn.luxstay.com/rooms/14648/large/1535624476_IMG_1703.jpg', N'Chỗ ở của chúng tôi có ban công rất đẹp, bạn có thể đọc sách, uống trà hoặc thư giãn nghe nhạc tại đây.Somerset Apartment cung cấp cho bạn đầy đủ những tiện nghi hiện đại bậc nhất', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (12, N'IPG.C1003', N'Hà Nội', N'ha noi', N'https://cdn.luxstay.com/users/1032/i8kCWRbYxxQ6hJuw-MCPQ0bO.jpg', N'
https://cdn.luxstay.com/users/1032/Z5I06E_xhQSBFsm6gK1VS1nr.jpg', N'
https://cdn.luxstay.com/users/1032/PTmPAdb2_QLGCUswm9bAWR-W.jpg', 1415000, 5, 2, N'https://cdn.luxstay.com/rooms/25495/large/room_25495_52_1558713239.jpg', N'Chung cư IMPERIA GARDEN, với 4 toà nhà cao từ 27 đến 35 tầng. Đây là một chung cư cao cấp, sang trọng, đẳng cấp 5 sao. Nằm giữa trung tâm quận Thanh Xuân, thành phố Hà Nội, rất thuận lợi cho việc nghỉ ngơi, du lịch và công tác.', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (13, N'JERRY ROOM', N'Hà Nội', N'ha noi', N'https://cdn.luxstay.com/rooms/25495/large/room_25495_63_1559010788.jpg', N'
https://cdn.luxstay.com/rooms/25495/large/room_25495_52_1558713239.jpg', N'
https://cdn.luxstay.com/rooms/25495/large/room_25495_47_1558713235.jpg', 382000, 3, 1, N'https://cdn.luxstay.com/users/1032/PTmPAdb2_QLGCUswm9bAWR-W.jpg', N'JERRY ROOM là 1 phòng riêng trong căn hộ tập thể của một tòa nhà Hà Nội xưa, ngay trung tâm của khu Pháp cổ tại Hà Nội, nơi mà bạn có thể dễ dàng cảm nhận được nhịp sống hàng ngày bình dị của người dân nơi đây.
Tuy ở vị trí cực kỳ trung tâm nhưng JERRY ROOM lại có thể đem tới cho bạn một không gian yên bình lắng đọng, khiến cho kỳ nghỉ của bạn trở nên vô cùng nhẹ nhàng nhưng cũng không kém phần thú vị.', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (14, N'Brand New Spacious', N'Hà Nội', N'ha noi', N'https://cdn.luxstay.com/rooms/27340/large/room_27340_7_1562566351.jpg', N'
https://cdn.luxstay.com/rooms/27340/large/room_27340_6_1562566350.jpg', N'
https://cdn.luxstay.com/rooms/27340/large/512420ef3ffcd9a280ed.jpg', 1190000, 4, 1, N'https://cdn.luxstay.com/rooms/27340/large/512420ef3ffcd9a280ed.jpg', N'Khi đến với chỗ ở của chúng tôi bạn hoàn toàn có thể sử dụng tất cả các căn hộ và coi đây như chính ngôi nhà của mình. Phòng ngủ, phòng khách, nhà bếp và phòng tắm sẽ là của bạn mà chẳng cần phải chia sẻ với ai. Còn gì tuyệt vời bằng điều đó nữa đúng không bạn ơi. ^^', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (15, N'AimeeHomestay#2', N'Hà Nội', N'ha noi', N'https://cdn.luxstay.com/rooms/34370/large/room_34370_1_1570514073.jpg', N'
https://cdn.luxstay.com/rooms/34370/large/room_34370_7_1570514077.jpg', N'
https://cdn.luxstay.com/rooms/34370/large/room_34370_4_1570514075.jpg', 315000, 4, 1, N'https://cdn.luxstay.com/rooms/34370/large/room_34370_4_1570514075.jpg', N'Các cặp đôi đi du lịch ưa thích không gian . Những người đi công tác xa muốn được ở trong không gian tiện nghi, rộng rãi , Điều hoà 2 chiều', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (16, N'Milan Homestay 2', N'Bà Rịa - Vũng Tàu', N'ba ria - vung tau , ba ria , vung tau , ba ria vung tau', N'https://cdn.luxstay.com/rooms/17103/large/room_17103_1542463741.jpg', N'
https://cdn.luxstay.com/rooms/17103/large/room_17103_461_1559811955.jpg', N'
https://cdn.luxstay.com/rooms/17103/large/room_17103_1542463707.jpg', 450000, 4, 2, N'https://cdn.luxstay.com/rooms/17103/large/room_17103_1542463707.jpg', N'Vị trí đẹp, ngay khu du lịch Bãi Sau. Đầy đủ nội thất, tiện nghi .Chỗ ở của chúng tôi thuộc chung cư cao cấp Melody Vũng Tàu. Có view phố, đầy đủ nội thất, nằm trong trung tâm du lịch thành phố Vũng Tàu.', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (17, N'Homestay Melody 2', N'Bà Rịa - Vũng Tàu', N'ba ria - vung tau , ba ria , vung tau , ba ria vung tau', N'https://cdn.luxstay.com/rooms/36947/large/edf960f5505bb605ef4a.jpg', N'
https://cdn.luxstay.com/rooms/36947/large/e617496e16c2f09ca9d3.jpg', N'
https://cdn.luxstay.com/rooms/36947/large/30d8e9d5d97b3f25666a.jpg', 559000, 4, 2, N'https://cdn.luxstay.com/rooms/36947/large/30d8e9d5d97b3f25666a.jpg', N'Melody là một trong những chung cư được nhiều người du lịch biết đến trong những năm gần đây do nơi đây có hàng trăm căn hộ cho khách du lịch thuê ngắn hạn. Với vị trí địa lý thuận tiện cách Bãi Sau chỉ 500m và cách Bãi Trước 1500m trên trục đường Hoàng Hoa Thám và Võ Thị Sáu, là khu vực nhộn nhịp nhất của thành phố Vũng Tàu.', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (18, N'Milan Homestay 6', N'Bà Rịa - Vũng Tàu', N'ba ria - vung tau , ba ria , vung tau , ba ria vung tau', N'https://cdn.luxstay.com/rooms/18081/large/2a7ac7774c80b5deec91.jpg', N'
https://cdn.luxstay.com/rooms/18081/large/d16ef6c17c368568dc27.jpg', N'
https://cdn.luxstay.com/rooms/18081/large/7aed4a4cc0bb39e560aa.jpg', 585000, 4, 2, N'https://cdn.luxstay.com/rooms/18081/large/7aed4a4cc0bb39e560aa.jpg', N'Vị trí đẹp, ngay khu du lịch Bãi Sau .Chỗ ở của chúng tôi thuộc chung cư cao cấp Melody Vũng Tàu. Có view phố, đầy đủ nội thất, nằm trong trung tâm du lịch thành phố Vũng Tàu.', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (19, N'HOMESTAY SUNRISE ', N'Bà Rịa - Vũng Tàu', N'ba ria - vung tau , ba ria , vung tau , ba ria vung tau', N'https://cdn.luxstay.com/users/77910/BkuKYOgSt0btW-7_xdMkSBw_.jpeg', N'
https://cdn.luxstay.com/users/77910/9uPD-iDkZOTWGVUiCz9Sa0Zx.jpeg', N'
https://cdn.luxstay.com/users/77910/lBWpxdATR4OMTXmm_UktVpKP.jpeg', 1200000, 5, 5, N'https://cdn.luxstay.com/rooms/18081/large/7aed4a4cc0bb39e560aa.jpg', N'HOMESTAY SUNRISE NGUYÊN CĂN có vị trí gần biển ( bãi sau). Với view hồ thoáng mát và yên tĩnh bạn chắc chắn sẽ có những ngày tháng nghỉ dưỡng tuyệt vời tại chỗ ở của chúng tôi.', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (20, N'Bright Elegant Apt', N'Hồ Chí Minh', N'ho chi minh', N'https://cdn.luxstay.com/rooms/13328/large/1530343271__DSC0214.JPG', N'
https://cdn.luxstay.com/rooms/13328/large/1530343292__DSC0198.JPG', N'
https://cdn.luxstay.com/rooms/13328/large/1530343293__DSC0207.JPG', 1390000, 5, 1, N'https://cdn.luxstay.com/rooms/13328/large/1530343271__DSC0214.JPG', N'Bright Elegant mới được hoàn thiện và đưa vào sử dụng từ cuối năm 2017. Nội thất được thiết kế độc đáo và đẹp mắt. Giường và nệm được đầu tư cẩn thận đem đến cho bạn một giấc ngủ ngon với các tiện ích rất đầy đủ đi kèm.', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (21, N'Oohlala Loft House', N'Hồ Chí Minh', N'ho chi minh', N'https://cdn.luxstay.com/rooms/13328/large/1530343271__DSC0214.JPG', N'
https://cdn.luxstay.com/rooms/16146/large/1539781818_IMG_0346.JPG', N'
https://cdn.luxstay.com/rooms/16146/large/1539781818_IMG_0353.JPG', 550000, 5, 1, N'https://cdn.luxstay.com/rooms/16146/large/1539778855_40481639_10215168742346046_1845357532227305472_n.jpg', N'Nằm ngay tại trung tâm thành phố với chợ Bến Thành, Bảo tàng Nghệ thuật, Đường Bùi Viện, Tháp Bitexco. Rất nhiều nhà hàng ăn uống trong vòng 5-10 phút đi bộ.
Chỗ ở của chúng tôi nằm trong một tòa nhà cũ từ những năm 70 nhưng được trang trí với màu sắc hiện đại, tươi sáng và vui tươi cho một tâm trạng thăng hoa. Đắm mình trong một trải nghiệm sống thú vị ở địa phương. Chào mừng bạn đến với OohLaLa The Loft!
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (22, N'Double Joy', N'Hồ Chí Minh', N'ho chi minh', N'https://cdn.luxstay.com/rooms/16425/large/1540624011_IMG_0264-min.jpg', N'
https://cdn.luxstay.com/rooms/16425/large/1540624009_IMG_0345-min.jpg', N'
https://cdn.luxstay.com/rooms/16425/large/1540624004_IMG_0284-min.jpg', 425000, 4, 1, N'https://cdn.luxstay.com/rooms/16425/large/1540624019_IMG_0245-min.jpg', N'A perfect choice for friends. Located in the heart of the city in the heritage district 3, only 5 - 10 mins access to CBD and other districts. This cosy and nicely decorated with two separate beds and green outlook. Walking distance to many markets, shoppings and especially local food! Friendly and helpful owners are happy to welcome you for a wonderful trip.
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (23, N'Cozy House 49', N'Hồ Chí Minh', N'ho chi minh', N'https://cdn.luxstay.com/rooms/35630/large/meeting-01.jpg', N'
https://cdn.luxstay.com/rooms/35630/large/meeting-03.jpg', N'
https://cdn.luxstay.com/rooms/35630/large/302-1.jpg', 480000, 4, 1, N'https://cdn.luxstay.com/rooms/35630/large/302-1.jpg', N'Cozy House được thiết kế như một căn biệt thự phố có đầy đủ tiện nghi. Những căn phòng rộng rãi với ban công hướng thành phố kết hợp cùng không gian yên tĩnh tạo nên những phút giây thư giãn đích thực.', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (24, N'A homestay 3BR', N'Hạ Long', N'ha long , quang ninh , cam pha', N'https://cdn.luxstay.com/rooms/12865/large/1528193791__DSC8306.JPG', N'
https://cdn.luxstay.com/rooms/12865/large/1528193713__DSC8322.JPG', N'
https://cdn.luxstay.com/rooms/12865/large/1528193713__DSC8322.JPG', 1700000, 5, 3, N'https://cdn.luxstay.com/rooms/12865/large/1528193713__DSC8322.JPG', N'03 phòng ngủ tại căn hộ được thiết kế theo phong cách hiện đại, với nhiều cửa sổ nhìn trực diện ra biển . Các không gian chung như phòng khách, bếp và ban công có diện tích rộng, có cây xanh để du khách có thể thư giãn
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (25, N'Green Bay Premium', N'Hạ Long', N'ha long , quang ninh , cam pha', N'https://cdn.luxstay.com/rooms/14863/large/1536423809_IMG_9751.jpg', N'
https://cdn.luxstay.com/rooms/14863/large/1536423804_IMG_9723.jpg', N'
https://cdn.luxstay.com/rooms/14863/large/1536423821_IMG_9705.jpg', 900000, 5, 2, N'https://cdn.luxstay.com/rooms/14863/large/1536423894_IMG_9700.jpg', N'Chỗ ở của chúng tôi nằm ở tầng 20, thuộc chung cư Green Bay Premium. Đây là chung cư cao cấp nhất tại Hạ Long hiện nay nằm trong quần thể khu đô thị mới Việt Nam ngay trung tâm thành phố Hạ Long.
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (26, N'Newstar Ha Long', N'Hạ Long', N'ha long , quang ninh , cam pha', N'https://cdn.luxstay.com/rooms/12140/large/1520842208__DSC8568.JPG', N'
https://cdn.luxstay.com/rooms/12140/large/1520842280__DSC8451.JPG', N'
https://cdn.luxstay.com/rooms/12140/large/1520842283__DSC8461.JPG', 3500000, 5, 4, N'https://cdn.luxstay.com/rooms/12140/large/1520842310__DSC8613.JPG', N'New Star là một căn Shop House với 4 phòng ngủ hiện đại, luôn tràn ngập ánh sáng từ những ban công rộng .Các khu vực bể bơi, gym, chợ hải sản, trung tâm thương mại, bảo tàng đều ở rất gần chỗ ở của chúng tôi chỉ chưa đầy 1 phút đi bộ là bạn có thể đắm mình vào khung cảnh hùng vĩ “phía trước mặt hướng ra vịnh Hạ Long, lưng tựa núi Bài Thơ"
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (27, N'Homestay Full House 1', N'Hạ Long', N'ha long , quang ninh , cam pha', N'https://cdn.luxstay.com/users/2850/peE1qVt3O6-5mv4y5LTjkkj0.jpg', N'
https://cdn.luxstay.com/users/2850/SChitM-cIA6d5dSK6XxHapGI.jpg', N'
https://cdn.luxstay.com/users/2850/ZMqhKR5JPNtsE3qIHo1c2oiQ.jpg', 1300000, 4, 2, N'https://cdn.luxstay.com/users/2850/ZMqhKR5JPNtsE3qIHo1c2oiQ.jpg', N'Căn hộ Full House sở hữu vị trí đắc địa tại mặt đường Hoàng Quốc Việt, Bãi Cháy, Hạ Long với tầm nhìn ra biển tuyệt đẹp từ ban công bếp và phòng ngủ. Từ đây, bạn có thể dễ dàng di chuyển đến các điểm vui chơi như công viên Sun World, bãi biển, du thuyền thăm vịnh, các quán cafe vô cùng chill... Bạn cũng có thể dễ dàng truy cập khu vực trung tâm thành phố Hạ Long - nơi có các điểm thăm quan như thư viện, bảo tàng, tháp đồng hồ... - những biểu tượng của tỉnh Quảng Ninh. Chúng tôi rất sẵn sàng chỉ dẫn thêm các địa điểm thú vị cho du khách.
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (28, N'The 1993 Hoi An', N'Hội An', N'hoi an', N'https://cdn.luxstay.com/rooms/67792/large/810_3671-HDR-as-Smart-Object-1.jpg', N'
https://cdn.luxstay.com/rooms/67792/large/810_3844-HDR-as-Smart-Object-1.jpg', N'
https://cdn.luxstay.com/rooms/67792/large/810_3768-HDR-as-Smart-Object-1.jpg', 399000, 4, 1, N'https://cdn.luxstay.com/rooms/67792/large/810_3768-HDR-as-Smart-Object-1.jpg', N'Cho dù bạn đang tìm kiếm một nơi để ở trong khi khám phá thành phố xinh đẹp của chúng tôi - Hội An hay chỉ là một nơi để thư giãn và tận hưởng thời gian của bạn, bạn chắc chắn sẽ hài lòng bởi ngôi nhà ấm áp, hiện đại và mới được cải tạo của chúng tôi.
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (29, N'Garden House Family', N'Hội An', N'hoi an', N'https://cdn.luxstay.com/rooms/12752/large/1527497446_20829935-0514-4d03-9b27-1d76cc79ee4f.jpg', N'
https://cdn.luxstay.com/rooms/12752/large/1527497446_3154406a-e62a-4c2e-a36b-f8781d36a28d.jpg', N'
https://cdn.luxstay.com/rooms/12752/large/1527497412_IMG_9989.jpg', 874000, 4, 2, N'https://cdn.luxstay.com/rooms/12752/large/1527497821_IMG_9982_-_Copy.jpg', N'Garden House với vị trí thuận tiện và cửa hàng tổng hợp gần đó, cửa sổ đẹp nhìn ra vườn. Được trang bị đầy đủ điều hòa, nước nóng lạnh, tủ lạnh, tivi nắp phẳng, và wifi miễn phí, hộ gia đình lớn có bếp ga, ăn uống - bàn, xe đạp miễn phí để khám phá Hội An xung quanh ...
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (30, N'Daisy room', N'Hội An', N'hoi an', N'https://cdn.luxstay.com/rooms/24888/large/room_24888_70_1557739628.jpg', N'
https://cdn.luxstay.com/rooms/24888/large/room_24888_55_1557739599.jpg', N'
https://cdn.luxstay.com/rooms/24888/large/room_24888_58_1557739603.jpg', 750000, 4, 1, N'https://cdn.luxstay.com/rooms/24888/large/room_24888_72_1557739633.jpg', N'Hội An Aroma Villa - Daisy Room có diện tích 28m2 nằm trong 1 biệt thự tuyệt đẹp rộng 400m2, với 2 giường ngủ. Đầy đủ các trang thiết bị tiện nghi hiện đại cửa sổ lớn nhìn ra vườn. Chúng tôi rất thân thiện, giao tiếp tiếng Anh tốt và sống trong villa nên dễ dàng hỗ trợ khách khi cần thiết.
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (31, N'Family Suite', N'Hội An', N'hoi an', N'https://cdn.luxstay.com/rooms/16498/large/1540861168_villa_tips_4png', N'
https://cdn.luxstay.com/rooms/16498/large/1540861167_villa_tips_3png', N'
https://cdn.luxstay.com/rooms/16498/large/1540861054_villa_2jpg', 1000000, 4, 2, N'https://cdn.luxstay.com/rooms/16498/large/1540861179_villa_7jpg', N'Hoi An Reverie Villas exemplify elegance through simplicity. The integration of lush gardens, open interiors with natural elements creates harmony for residents to enjoy the beauty of the location from the privacy of your villa. Hoi An Reverie Villas is comprised of 3 Villas featuring luxurious, modern architecture and natural green spaces. From the spacious and elegant river view Villas to the exclusive privacy of the Hoi An Reverie Villas, each villa is unique and offers a luxurious retreat.
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (32, N'A.501 DELUXE ROOM', N'Nha Trang', N'nha trang, khanh hoa, khánh hoà', N'https://cdn.luxstay.com/rooms/16598/large/1541142286_can_ho_homejpg2jpg', N'
https://cdn.luxstay.com/rooms/16598/large/1541142286_can_ho_homejpg3jpg', N'
https://cdn.luxstay.com/rooms/16598/large/1541142285_can_ho_homejpg4jpg', 570000, 4, 1, N'https://cdn.luxstay.com/rooms/16598/large/1541142287_can_ho_7jpg8jpg', N'Thật thuận tiện khi các hệ thống thông tin quốc tế hiện đại, Internet wifi, truyền hình cáp với hàng chục kênh truyền hình quốc tế và Việt Nam được cung cấp miễn phí tới tất cả các phòng
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (33, N'A.302 STANDARD ROOM', N'Nha Trang', N'nha trang, khanh hoa, khánh hoà', N'https://cdn.luxstay.com/rooms/16664/large/1541235355_24550324_1746461578717539_1930942821_njpg', N'
https://cdn.luxstay.com/rooms/16664/large/1541235355_24331329_1747295805300783_473617728_njpg', N'
https://cdn.luxstay.com/rooms/16664/large/1541235355_24204780_1746461018717595_1242419572_n_1jpg', 470000, 4, 1, N'https://cdn.luxstay.com/rooms/16664/large/1541235357_24331217_1746461658717531_645715910_njpg', N'Home Vu nằm trọn trong lòng phố biển Nha Trang, đường Nguyễn Thiện Thuật. Được biết đến như một trong những con phố du lịch sầm uất bậc nhất.Được người dân địa phương ưu ái gọi tên “phố tây”, giống với phố tây Phạm Ngũ Lão ở thành phố Hồ Chí Minh. Con đường này mang nét đặc trưng riêng và có những lợi thế ít nơi có được.
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (34, N'A.502 STANDARD ROOM', N'Nha Trang', N'nha trang, khanh hoa, khánh hoà', N'https://cdn.luxstay.com/rooms/16622/large/1541151194_24331077_1746464015383962_344616442_njpg', N'
https://cdn.luxstay.com/rooms/16622/large/1541151194_24337643_1746463238717373_184496529_njpg', N'
https://cdn.luxstay.com/rooms/16622/large/1541151194_24273343_1746464605383903_2084408974_njpg', 470000, 4, 1, N'https://cdn.luxstay.com/rooms/16622/large/1541408261_1541234349_can_ho_7jpg9jpgjpg', N'Thật thuận tiện khi các hệ thống thông tin quốc tế hiện đại, Internet wifi, truyền hình cáp với hàng chục kênh truyền hình quốc tế và Việt Nam được cung cấp miễn phí tới tất cả các phòng tại Home Vu Apartments. Hệ thống báo cháy tự động, điều hòa nhiệt độ, tủ lạnh, máy đun nước nóng, bồn tắm và máy sấy tóc… cũng là những tiện nghi có trong mỗi phòng. Đặc biệt, tất cả các phòng đều được trang bị đầy đủ các dụng cụ làm bếp, phục vụ quý khách có nhu cầu tự nấu nướng cho kỳ nghỉ của mình.
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (35, N'999 CONDOTEL', N'Nha Trang', N'nha trang, khanh hoa, khánh hoà', N'https://cdn.luxstay.com/rooms/28061/large/room_28061_4_1572240722.jpg', N'
https://cdn.luxstay.com/rooms/28061/large/room_28061_2_1572240711.jpg', N'
https://cdn.luxstay.com/rooms/28061/large/room_28061_10_1572240748.jpg', 636000, 5, 1, N'https://cdn.luxstay.com/rooms/28061/large/room_28061_10_1572240748.jpg', N'999 CONDOTEL toạ lạc tại khu bãi biển Phạm Văn Đồng là Căn hộ cao cấp có tầm nhìn ra biển bao gồm 2 phòng ngủ, 2 phòng tắm, ban công , phòng khách, một gian bếp đầy đủ tiện nghi để nấu nướng...Tất cả căn hộ đều trang bị Smart TV màn hình phẳng, Wifi miễn phí, bếp từ, tủ lạnh cỡ lớn, lò vi sóng, máy giặt, máy sấy, bàn ủi và đầy đủ thiết bị vệ sinh cá nhân...
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (36, N'TABI Homestay hue', N'Huế', N'hue, thua thien hue , th?a thiên hu?', N'https://cdn.luxstay.com/rooms/17562/large/73.jpg', N'
https://cdn.luxstay.com/rooms/17562/large/75.jpg', N'
https://cdn.luxstay.com/rooms/17562/large/69.jpg', 330000, 5, 1, N'https://cdn.luxstay.com/rooms/17562/large/69.jpg', N'Home có sân rộng để ôtô từ 4 - 7 chổ. Chỉ mất 5 phút đi bộ để đến được phố đi bộ với nhiều Pub, Bar sôi động náo nhiệt. 10 phút đến trung tâm mua sắm Vincom Plaza của Bác Vượng
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (37, N'Branchiee Homestay', N'Huế', N'hue, thua thien hue , th?a thiên hu?', N'https://cdn.luxstay.com/rooms/17562/large/73.jpg', N'
https://cdn.luxstay.com/rooms/17562/large/75.jpg', N'
https://cdn.luxstay.com/rooms/17562/large/69.jpg', 350000, 4, 2, N'https://cdn.luxstay.com/rooms/15077/large/1537192611_P2-1.JPG', N'Branchiee Homestay có 2 phòng ngủ đôi, phù hợp cho một gia đình hoặc nhóm bạn (chỉ nhận khách nữ) .Phòng Branchiee #2 rộng 12 m2, trang trí lấy cảm hứng từ các cành cây. Branchiee muốn mang đến cho bạn một trải nghiệm độc đáo không có ở nơi nào khác ở Huế.
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (38, N'MyFa House', N'Huế', N'hue, thua thien hue , th?a thiên hu?', N'https://cdn.luxstay.com/users/333653/73oAzGv66UUTxAjY7xdLJFep.jpg', N'
https://cdn.luxstay.com/users/333653/S0LGEkcLpyUXeRiYsSAff4yq.jpg', N'
https://cdn.luxstay.com/users/333653/WcUQEBLwqYXIG1vj0j8oKNYc.jpg', 900000, 5, 3, N'https://cdn.luxstay.com/users/333653/3FLaQq1LRLyC7GU2hjFAVS_b.jpg', N'MyFa House tọa lạc tại thành phố Huế, cách Thành cổ 2 km, cách Chợ Đông Ba 4 km. Các phòng tràn đầy ánh sáng tự nhiên, bầu không khí rất tươi mới .Các phòng hoàn toàn mới của chúng tôi rất đẹp và được trang bị đầy đủ
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (39, N'MBamboo homestay Huế', N'Huế', N'hue, thua thien hue , th?a thiên hu?', N'https://cdn.luxstay.com/rooms/19786/large/room_19786_5_1548060284.jpg', N'
https://cdn.luxstay.com/rooms/19786/large/room_19786_4_1548060261.jpg', N'
https://cdn.luxstay.com/rooms/19786/large/room_19786_1_1548060233.jpg', 720000, 5, 1, N'https://cdn.luxstay.com/rooms/19786/large/room_19786_7_1553957178.jpg', N'Bamboo Grand Room là căn phòng rộng phù hợp với nhóm bạn 6-8 người với ban công thoáng đãng và rộng rãi. Nằm ở ngay trung tâm thành phố Huế, từ Bamboo Homestay bạn có thể thuận tiện di chuyển đến các địa điểm du lịch, ẩm thực nổi tiếng ở Huế với sự hướng dẫn chu đáo từ các thành viên của homestay.
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (40, N'Chic Studio', N'Huế', N'hue, thua thien hue , th?a thiên hu?', N'https://cdn.luxstay.com/rooms/15289/large/1537693407_1.jpg', N'
https://cdn.luxstay.com/rooms/15289/large/1537693408_9.jpg', N'
https://cdn.luxstay.com/rooms/15289/large/1537693410_5.jpg', 460000, 4, 1, N'https://cdn.luxstay.com/rooms/15289/large/1537693422_2.jpg', N'Vị trí đẹp ngay gần phố đi bộ với rất nhiều nhà hàng, quán ăn, bar, giặt là, thuê xe.... Thuận tiện khám phá các địa điểm du lịch ở Huế
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (41, N'Shark Homestay', N'Huế', N'hue, thua thien hue , th?a thiên hu?', N'https://cdn.luxstay.com/rooms/28170/large/room_28170_4_1564061531.jpg', N'
https://cdn.luxstay.com/rooms/28170/large/room_28170_2_1564061530.jpg', N'
https://cdn.luxstay.com/rooms/28170/large/room_28170_1_1564061529.jpg', 490000, 4, 2, N'https://cdn.luxstay.com/rooms/28170/large/room_28170_1_1564061529.jpg', N'Shark Homestay nằm ngay khu phố tây(đặc biệt tối T6,T7 & CN sẽ có phố đi bộ) và trung tâm thành phố nên rất tiện cho việc đi lại cũng như tham quan của quý khách.
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (42, N'Sea View Condominium', N'Phan Thiết', N'phan thiet,binh thuan , bình thu?n', N'https://cdn.luxstay.com/rooms/29967/large/room_29967_95_1567579242.jpg', N'
https://cdn.luxstay.com/rooms/29967/large/room_29967_82_1567579230.jpg', N'
https://cdn.luxstay.com/rooms/29967/large/room_29967_100_1567579246.jpg', 4500000, 5, 3, N'https://cdn.luxstay.com/rooms/29967/large/2020-02-28-06.41.11-2.jpg', N'Tọa lạc tại vị trí đắc địa khu vực Mũi Né với tầm nhìn ra vịnh biển tuyệt đẹp, đồng thời là bãi tắm cho khách lưu trú. Gần trung tâm thành phố Phan Thiết và các địa điểm khu du lịch nổi tiếng, thuận tiện cho việc tham quan di chuyển. Căn hộ thoáng mát, sạch sẽ, hiện đại với đầy đủ các tiện ích sinh hoạt và vật dụng nhà bếp. Cho bạn trải nghiệm thoải mái và tiện nghi, phù hợp cho gia đình và nhóm bạn.
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (43, N'Ocean Vista Charming', N'Phan Thiết', N'phan thiet,binh thuan , bình thu?n', N'https://cdn.luxstay.com/rooms/11710/large/1508128319_DSC_0114.jpg', N'
https://cdn.luxstay.com/rooms/11710/large/1508128318_DSC_0111.jpg', N'
https://cdn.luxstay.com/rooms/11710/large/1508128299_DSC_0141.jpg', 1085000, 5, 3, N'https://cdn.luxstay.com/rooms/11710/large/1508128301_DSC_0131.jpg', N'Chỗ ở của chúng tôi nằm trong khu phức hợp Ocean Vista thuộc Sealink Resort & Golf. Nằm ở vị trí tuyệt đẹp trên trục đường biển Phan Thiết – Mũi Né.
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (44, N'Opal house, Ta Van', N'Sa Pa', N'sa pa, lao cai, lào cai', N'https://cdn.luxstay.com/rooms/14915/large/1536662824_IMG_6537.JPG', N'
https://cdn.luxstay.com/rooms/14915/large/1536662824_IMG_5613.JPG', N'
https://cdn.luxstay.com/rooms/14915/large/1536662825_IMG_2666.JPG', 805000, 5, 1, N'https://cdn.luxstay.com/rooms/14915/large/1536725198_35530724_2066889883549647_5009315714188705792_n.jpg', N'Một chút không gian "thiên nhiên" của nhà OPAL HOUSE - nơi các bạn có thể thả hồn vào mây trời, cuốn bay mọi stress và bức bối của công việc, áp lực...
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (45, N'Ruahouse Mountain ', N'Sa Pa', N'sa pa, lao cai, lào cai', N'https://cdn.luxstay.com/rooms/18000/large/632A5630.jpg', N'
https://cdn.luxstay.com/rooms/18000/large/VUX_8080.jpg', N'
https://cdn.luxstay.com/rooms/18000/large/room_18000_46_1551080774.jpg', 1800000, 5, 1, N'https://cdn.luxstay.com/rooms/18000/large/632A5630.jpg', N'Căn nhà gỗ trên đỉnh núi ruộng bậc thang Ý Lình Hồ, Lao Chải, xung quanh là xóm nhỏ của người bản địa. Cách thị trấn Sapa 4km, Ruahouse Mountain Hamelt giữ được sự yên tĩnh tuyệt đối, không có tiếng xây dựng, ko có ồn ào, chỉ có tiếng trẻ con gọi nhau, tiếng nói chuyện sinh hoạt của gia đình đồng bào. Nằm trên đỉnh núi nên Rùa có view 360 độ thung lũng ruộng bậc thang bốn mùa, bên cạnh nhà có con suối hoa nước chảy róc rách. Từ căn nhà gỗ của Ruahouse, đi bộ 5 phút ra chợ dân tộc họp chợ: gùi ngô, thực phẩm, đồ thổ cẩm, tạp hóa,..
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (46, N'Wanderlust Bungalow', N'Phú Quốc', N'phu quoc, kien giang, kiên giang', N'https://cdn.luxstay.com/rooms/13854/large/room_13854_139_1564383812.jpg', N'
https://cdn.luxstay.com/rooms/13854/large/room_13854_138_1564383810.jpg', N'
https://cdn.luxstay.com/rooms/13854/large/room_13854_137_1564383808.jpg', 750000, 5, 1, N'https://cdn.luxstay.com/rooms/13854/large/room_13854_10_1548154565.jpg', N'Nếu bạn đang tìm kiếm một ngôi nhà gỗ hoặc một ngôi nhà gần bãi cát trắng Bãi Sao, thì Wanderlust Bungalows của chúng tôi là lựa chọn phù hợp. Chúng tôi đang ở thị trấn An Thới, chỉ cần 5 phút đi xe máy để đến Bãi Sao. Chúng tôi có vị trí tuyệt vời, gần chợ địa phương, gần Bãi Sao, Bãi Khem, Chùa Hồ Quốc, trường tiểu học.
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (47, N'Phòng sân vườn xinh', N'Phú Quốc', N'phu quoc, kien giang, kiên giang', N'https://cdn.luxstay.com/rooms/12450/large/room_12450_311_1566376506.jpg', N'
https://cdn.luxstay.com/rooms/12450/large/room_12450_313_1566376508.jpg', N'
https://cdn.luxstay.com/rooms/12450/large/room_12450_316_1566376510.jpg', 602000, 5, 1, N'https://cdn.luxstay.com/rooms/12450/large/room_12450_316_1566376510.jpg', N'Môi trường rất truyền thống của Việt Nam cho trải nghiệm địa phương thực sự của bạn ở Phú Quốc. Nằm dọc theo bờ biển Cửa Cạn, một trong những nơi còn sót lại của thiên nhiên Phú Quốc. Phú Quốc EcoLodge là một nơi nghỉ ngơi thư giãn hoàn hảo, yên tĩnh và thoải mái với cảnh quan tuyệt đẹp quang cảnh bãi biển.Ý tưởng đầu tiên khi chúng tôi xây dựng Phú Quốc Eco Lodge là về một cái gì đó nguyên bản, một cái gì đó về địa phương, Việt Nam thực sự. Ở đây, chúng tôi đang vật lộn để tạo ra một phiên bản nhỏ của làng Việt Nam địa phương.
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (49, N'JADORE', N'Đà lạt', N'da lat', N'https://cdn.luxstay.com/users/42940/TApMAmFI4oPRd1LJ1vNnFbq5.jpg', N'https://cdn.luxstay.com/users/42940/QBgtvxCbi7I1-qMR7Cg7WcVv.jpg', N'https://cdn.luxstay.com/rooms/20131/large/room_20131_2_1548760429.jpg', 1300000, 5, 1, N'https://cdn.luxstay.com/users/42940/yAQaSHcuCb4Ef5_vXwtfadwf.jpg', N'Jadore tọa lạc trên ngọn đồi nhỏ yên bình với phong cách kiến trúc tối giảnNằm trong nội thành, cách trung tâm thành phố chưa đầy 3,5 km, Jadore có 10 phòng ở tiện nghi được thiết kế hoàn toàn khác biệt nhau để mang đến cho bạn trải nghiệm mới mỗi khi đến. Vườn cỏ xanh mát rộng hơn 600m2 của J"adore sẽ là nơi để bạn có thể thư giãn uống trà hay quây quần bên bạn bè với những bữa tiệc ngoài trời thú vị. Bạn có thể tự do sử dụng nhà bếp, phòng ăn tại J"adore với đầy đủ các vật dụng nấu nướng như tại chính ngôi nhà của bạn.
', 0, 1, 1)
INSERT [dbo].[room] ([id], [roomName], [name], [searchName], [detailImageRoom1], [detailImageRoom2], [detailImageRoom3], [price], [star], [quantityBed], [imageRoom], [descriptions], [isLike], [isActive], [isExist]) VALUES (59, N'Pura Vida house', N'Hà Nội', N'-', N'https://cdn.luxstay.com/rooms/31788/large/room_31788_6_1567696398.jpg', N'https://cdn.luxstay.com/rooms/31788/large/room_31788_1_1567696390.jpg', N'https://cdn.luxstay.com/rooms/31788/large/room_31788_10_1567696477.jpg', 617000, 4, 1, N'https://cdn.luxstay.com/rooms/31788/large/room_31788_10_1567696477.jpg', N'Ngay sát cạnh Nhà Hát Lớn và ĐSQ Ý, Pura Vida chỉ cách Hồ Hoàn Kiếm 700m và 500m tới khu vực phố cổ,thừa hưởng mọi lợi ích của khu tập thể cũ Bộ Thương Mại ', 0, 1, 1)
SET IDENTITY_INSERT [dbo].[room] OFF
ALTER TABLE [dbo].[bookingDetail]  WITH CHECK ADD FOREIGN KEY([email])
REFERENCES [dbo].[account] ([email])
GO
ALTER TABLE [dbo].[bookingDetail]  WITH CHECK ADD FOREIGN KEY([idRoom])
REFERENCES [dbo].[room] ([id])
GO
ALTER TABLE [dbo].[carRent]  WITH CHECK ADD FOREIGN KEY([email])
REFERENCES [dbo].[account] ([email])
GO
ALTER TABLE [dbo].[likeList]  WITH CHECK ADD FOREIGN KEY([email])
REFERENCES [dbo].[account] ([email])
GO
ALTER TABLE [dbo].[likeList]  WITH CHECK ADD FOREIGN KEY([idRoom])
REFERENCES [dbo].[room] ([id])
GO
ALTER TABLE [dbo].[room]  WITH CHECK ADD FOREIGN KEY([name])
REFERENCES [dbo].[place] ([name])
GO
