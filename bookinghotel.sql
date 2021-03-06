USE [BookingHotel]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 3/21/2022 4:53:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[adminId] [int] NOT NULL,
	[fullName] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[phone] [varchar](50) NOT NULL,
	[address] [varchar](max) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[adminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 3/21/2022 4:53:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[customerId] [int] IDENTITY(1,1) NOT NULL,
	[fullName] [varchar](50) NOT NULL,
	[address] [varchar](max) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[gender] [int] NOT NULL,
	[phone] [varchar](50) NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK__customer__B611CB7D42FC926F] PRIMARY KEY CLUSTERED 
(
	[customerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customeraccount]    Script Date: 3/21/2022 4:53:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customeraccount](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](32) NOT NULL,
	[customerID] [int] NOT NULL,
 CONSTRAINT [PK_customeraccount] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image]    Script Date: 3/21/2022 4:53:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image](
	[imageId] [int] IDENTITY(1,1) NOT NULL,
	[imageLink] [varchar](50) NOT NULL,
	[roomId] [int] NOT NULL,
 CONSTRAINT [PK__image__336E9B55CCFFC667] PRIMARY KEY CLUSTERED 
(
	[imageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 3/21/2022 4:53:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[orderId] [int] IDENTITY(1,1) NOT NULL,
	[customerId] [int] NOT NULL,
	[address] [varchar](max) NOT NULL,
	[dateBuy] [varchar](50) NOT NULL,
	[dateDone] [datetime2](0) NOT NULL,
	[roomId] [int] NOT NULL,
	[price] [decimal](10, 0) NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK__orders__0809335D34F35C9E] PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room]    Script Date: 3/21/2022 4:53:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room](
	[roomId] [int] IDENTITY(1,1) NOT NULL,
	[roomName] [varchar](50) NOT NULL,
	[price] [float] NOT NULL,
	[typeId] [int] NOT NULL,
	[status] [int] NOT NULL,
	[decription] [varchar](150) NULL,
 CONSTRAINT [PK__room__6C3BF5BE0616F964] PRIMARY KEY CLUSTERED 
(
	[roomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[admin] ([adminId], [fullName], [username], [password], [phone], [address], [email], [status]) VALUES (1, N'Admin', N'admin', N'admin', N'0329449553', N'Ha noi', N'admin@fpt.edu.vn', 1)
GO
SET IDENTITY_INSERT [dbo].[customer] ON 

INSERT [dbo].[customer] ([customerId], [fullName], [address], [email], [gender], [phone], [status]) VALUES (1, N'customer', N'Ha Noi', N'customer@fpt.edu.vn', 1, N'0939228130', 1)
INSERT [dbo].[customer] ([customerId], [fullName], [address], [email], [gender], [phone], [status]) VALUES (2, N'User', N'Ninh Binh', N'user@gmail.com', 1, N'0337677883', 1)
INSERT [dbo].[customer] ([customerId], [fullName], [address], [email], [gender], [phone], [status]) VALUES (3, N'User1', N'Nam Dinh', N'user1@gmail.com', 1, N'0337677883', 1)
INSERT [dbo].[customer] ([customerId], [fullName], [address], [email], [gender], [phone], [status]) VALUES (4, N'User2', N'Nha Trang', N'user2@gmail.com', 1, N'0337677883', 1)
INSERT [dbo].[customer] ([customerId], [fullName], [address], [email], [gender], [phone], [status]) VALUES (5, N'User3', N'Vinh Phuc', N'user3@gmail.com', 1, N'0337677883', 1)
SET IDENTITY_INSERT [dbo].[customer] OFF
GO
INSERT [dbo].[customeraccount] ([username], [password], [customerID]) VALUES (N'user1', N'123', 1)
INSERT [dbo].[customeraccount] ([username], [password], [customerID]) VALUES (N'user2', N'123', 2)
INSERT [dbo].[customeraccount] ([username], [password], [customerID]) VALUES (N'user3', N'123', 3)
GO
SET IDENTITY_INSERT [dbo].[image] ON 

INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (1, N'phong15', 1)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (2, N'phong15', 1)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (3, N'phong15', 1)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (4, N'room2_1', 2)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (5, N'room2_1', 2)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (6, N'room2_1', 2)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (7, N'room3_1', 3)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (8, N'room3_1', 3)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (9, N'room3_1', 3)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (10, N'room4_1', 4)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (11, N'room5', 12)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (12, N'phong15', 19)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (13, N'phong15', 20)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (14, N'king', 21)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (15, N'king', 22)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (16, N'view', 23)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (17, N'view', 24)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (18, N'room1', 25)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (19, N'room1', 26)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (20, N'phong15', 31)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (21, N'phong15', 32)
SET IDENTITY_INSERT [dbo].[image] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([orderId], [customerId], [address], [dateBuy], [dateDone], [roomId], [price], [status]) VALUES (1, 1, N'Ninh Binh', N'2020-07-08 00:00:00', CAST(N'2020-07-23T00:00:00.0000000' AS DateTime2), 1, CAST(100000 AS Decimal(10, 0)), 0)
INSERT [dbo].[orders] ([orderId], [customerId], [address], [dateBuy], [dateDone], [roomId], [price], [status]) VALUES (3, 3, N'Ha Noi', N'2020-07-17 14:42:01', CAST(N'2020-07-23T14:42:01.0000000' AS DateTime2), 2, CAST(200000 AS Decimal(10, 0)), 0)
INSERT [dbo].[orders] ([orderId], [customerId], [address], [dateBuy], [dateDone], [roomId], [price], [status]) VALUES (4, 4, N'Binh Duong', N'2020-07-15 21:21:26', CAST(N'2020-07-15T21:21:26.0000000' AS DateTime2), 3, CAST(150000 AS Decimal(10, 0)), 0)
INSERT [dbo].[orders] ([orderId], [customerId], [address], [dateBuy], [dateDone], [roomId], [price], [status]) VALUES (5, 5, N'Vinh Phuc', N'2020-07-21 00:00:00', CAST(N'2020-07-21T00:00:00.0000000' AS DateTime2), 4, CAST(100000 AS Decimal(10, 0)), 0)
INSERT [dbo].[orders] ([orderId], [customerId], [address], [dateBuy], [dateDone], [roomId], [price], [status]) VALUES (6, 2, N'Nha Trang', N'2022-03-01 05:25', CAST(N'2022-03-08T05:50:00.0000000' AS DateTime2), 2, CAST(2400000 AS Decimal(10, 0)), 0)
INSERT [dbo].[orders] ([orderId], [customerId], [address], [dateBuy], [dateDone], [roomId], [price], [status]) VALUES (10, 1, N'Thanh Hoa', N'2020-07-08 00:00:00', CAST(N'2020-07-23T00:00:00.0000000' AS DateTime2), 1, CAST(1200000 AS Decimal(10, 0)), 0)
INSERT [dbo].[orders] ([orderId], [customerId], [address], [dateBuy], [dateDone], [roomId], [price], [status]) VALUES (21, 1, N'Ha Noi', N'2022-03-14 13:45', CAST(N'2022-03-15T18:50:00.0000000' AS DateTime2), 19, CAST(1000000 AS Decimal(10, 0)), 0)
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[room] ON 

INSERT [dbo].[room] ([roomId], [roomName], [price], [typeId], [status], [decription]) VALUES (1, N'SINGLE ROOM 1 ', 700000, 1, 1, N'Phong so 1 loai SINGLE ROOM')
INSERT [dbo].[room] ([roomId], [roomName], [price], [typeId], [status], [decription]) VALUES (2, N'SINGLE ROOM 2 ', 700000, 2, 1, N'Phong so 2 loai SINGLE ROOM')
INSERT [dbo].[room] ([roomId], [roomName], [price], [typeId], [status], [decription]) VALUES (3, N'DOUBLE ROOM 3', 1000000, 3, 1, N'Phong so 3 loai DOUBLE ROOM')
INSERT [dbo].[room] ([roomId], [roomName], [price], [typeId], [status], [decription]) VALUES (4, N'DOUBLE ROOM 4', 1000000, 4, 1, N'Phong so 4 loai DOUBLE ROOM')
INSERT [dbo].[room] ([roomId], [roomName], [price], [typeId], [status], [decription]) VALUES (12, N'DELUXE ROOM 5', 1400000, 1, 1, N'Phong so 5 loai DELUXE ROOM')
INSERT [dbo].[room] ([roomId], [roomName], [price], [typeId], [status], [decription]) VALUES (13, N'DELUXE ROOM 6', 1400000, 1, 1, N'Phong so 6 loai DELUXE ROOM')
INSERT [dbo].[room] ([roomId], [roomName], [price], [typeId], [status], [decription]) VALUES (19, N'FAMILY ROOM 7', 1500000, 1, 1, N'Phong so 7 loai FAMILY ROOM')
INSERT [dbo].[room] ([roomId], [roomName], [price], [typeId], [status], [decription]) VALUES (20, N'FAMILY ROOM 8', 1500000, 1, 1, N'Phong so 8 loai FAMILY ROOM')
INSERT [dbo].[room] ([roomId], [roomName], [price], [typeId], [status], [decription]) VALUES (21, N' KING ROOM 9', 1800000, 1, 1, N'Phong so 9 loai  KING ROOM')
INSERT [dbo].[room] ([roomId], [roomName], [price], [typeId], [status], [decription]) VALUES (22, N' KING ROOM 10', 1800000, 1, 1, N'Phong so 10 loai  KING ROOM')
INSERT [dbo].[room] ([roomId], [roomName], [price], [typeId], [status], [decription]) VALUES (23, N'HONEYMOON ROOM 11', 2000000, 1, 1, N'Phong so 11 loai HONEYMOON ROOM')
INSERT [dbo].[room] ([roomId], [roomName], [price], [typeId], [status], [decription]) VALUES (24, N'HONEYMOON ROOM 12', 2000000, 1, 1, N'Phong so 12 loai HONEYMOON ROOM')
INSERT [dbo].[room] ([roomId], [roomName], [price], [typeId], [status], [decription]) VALUES (25, N' ROOM WITH VIEW 13', 2400000, 1, 0, N'Phong so 13 loai  ROOM WITH VIEW')
INSERT [dbo].[room] ([roomId], [roomName], [price], [typeId], [status], [decription]) VALUES (26, N' ROOM WITH VIEW 14', 2400000, 1, 0, N'Phong so 14 loai  ROOM WITH VIEW')
INSERT [dbo].[room] ([roomId], [roomName], [price], [typeId], [status], [decription]) VALUES (29, N'LUXURY ROOM', 1000000, 1, 0, N'Phong so 1 loai LUXURY ROOM')
INSERT [dbo].[room] ([roomId], [roomName], [price], [typeId], [status], [decription]) VALUES (30, N'LUXURY ROOM', 1000000, 1, 0, N'Phong so 1 loai LUXURY ROOM')
INSERT [dbo].[room] ([roomId], [roomName], [price], [typeId], [status], [decription]) VALUES (31, N'SMALL ROOM', 1000000, 1, 0, N'Phong so 1 loai SMALL ROOM')
INSERT [dbo].[room] ([roomId], [roomName], [price], [typeId], [status], [decription]) VALUES (32, N'SMALL ROOM', 1000000, 1, 0, N'SMALL ROOM')
SET IDENTITY_INSERT [dbo].[room] OFF
GO
ALTER TABLE [dbo].[customeraccount]  WITH CHECK ADD  CONSTRAINT [FK_customeraccount_customer] FOREIGN KEY([customerID])
REFERENCES [dbo].[customer] ([customerId])
GO
ALTER TABLE [dbo].[customeraccount] CHECK CONSTRAINT [FK_customeraccount_customer]
GO
ALTER TABLE [dbo].[image]  WITH CHECK ADD  CONSTRAINT [FK_image_room] FOREIGN KEY([roomId])
REFERENCES [dbo].[room] ([roomId])
GO
ALTER TABLE [dbo].[image] CHECK CONSTRAINT [FK_image_room]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_customer] FOREIGN KEY([customerId])
REFERENCES [dbo].[customer] ([customerId])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_customer]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_room] FOREIGN KEY([roomId])
REFERENCES [dbo].[room] ([roomId])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_room]
GO
USE [master]
GO
ALTER DATABASE [BookingHotel] SET  READ_WRITE 
GO
