USE [BookingHotel]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 3/15/2022 10:47:54 PM ******/
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
/****** Object:  Table [dbo].[customer]    Script Date: 3/15/2022 10:47:54 PM ******/
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
/****** Object:  Table [dbo].[customeraccount]    Script Date: 3/15/2022 10:47:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customeraccount](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](32) NOT NULL,
	[customerID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_customeraccount] PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image]    Script Date: 3/15/2022 10:47:54 PM ******/
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
/****** Object:  Table [dbo].[orders]    Script Date: 3/15/2022 10:47:54 PM ******/
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
/****** Object:  Table [dbo].[room]    Script Date: 3/15/2022 10:47:54 PM ******/
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
 CONSTRAINT [PK__room__6C3BF5BE0616F964] PRIMARY KEY CLUSTERED 
(
	[roomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[admin] ([adminId], [fullName], [username], [password], [phone], [address], [email], [status]) VALUES (1, N'Admin', N'admin', N'admin', N'9876543210', N'Ha noi', N'admin@fpt.edu.vn', 1)
GO
SET IDENTITY_INSERT [dbo].[customer] ON 

INSERT [dbo].[customer] ([customerId], [fullName], [address], [email], [gender], [phone], [status]) VALUES (1, N'User', N'Ha noi', N'customer@fpt.edu.vn', 1, N'0939228130', 1)
INSERT [dbo].[customer] ([customerId], [fullName], [address], [email], [gender], [phone], [status]) VALUES (2, N'User1', N'ha noi', N'user1@gmail.com', 1, N'0337677883', 1)
INSERT [dbo].[customer] ([customerId], [fullName], [address], [email], [gender], [phone], [status]) VALUES (3, N'User2', N'ha noi', N'user2@gmail.com', 1, N'0337677883', 1)
INSERT [dbo].[customer] ([customerId], [fullName], [address], [email], [gender], [phone], [status]) VALUES (4, N'User3', N'ha noi', N'user2@gmail.com', 1, N'0337677883', 1)
INSERT [dbo].[customer] ([customerId], [fullName], [address], [email], [gender], [phone], [status]) VALUES (5, N'User4', N'ha noi', N'user3@gmail.com', 1, N'0337677883', 1)
INSERT [dbo].[customer] ([customerId], [fullName], [address], [email], [gender], [phone], [status]) VALUES (8, N'Mra', N'Ha Noi', N'mra@gmail.com', 1, N'1234687210', 1)
SET IDENTITY_INSERT [dbo].[customer] OFF
GO
SET IDENTITY_INSERT [dbo].[customeraccount] ON 

INSERT [dbo].[customeraccount] ([username], [password], [customerID]) VALUES (N'user1', N'123', 1)
INSERT [dbo].[customeraccount] ([username], [password], [customerID]) VALUES (N'user2', N'123', 2)
INSERT [dbo].[customeraccount] ([username], [password], [customerID]) VALUES (N'user3', N'123', 3)
INSERT [dbo].[customeraccount] ([username], [password], [customerID]) VALUES (N'mra', N'123', 4)
SET IDENTITY_INSERT [dbo].[customeraccount] OFF
GO
SET IDENTITY_INSERT [dbo].[image] ON 

INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (1, N'room1_1', 1)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (2, N'room1_2', 1)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (3, N'room1_3', 1)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (4, N'room2_1', 2)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (5, N'room2_2', 2)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (6, N'room2_3', 2)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (7, N'room3_1', 3)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (8, N'room3_2', 3)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (9, N'room3_3', 3)
INSERT [dbo].[image] ([imageId], [imageLink], [roomId]) VALUES (10, N'room4_1', 4)
SET IDENTITY_INSERT [dbo].[image] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([orderId], [customerId], [address], [dateBuy], [dateDone], [roomId], [price], [status]) VALUES (1, 1, N'Ha Noi', N'2020-07-08 00:00:00', CAST(N'2020-07-23T00:00:00.0000000' AS DateTime2), 1, CAST(1450000 AS Decimal(10, 0)), 0)
INSERT [dbo].[orders] ([orderId], [customerId], [address], [dateBuy], [dateDone], [roomId], [price], [status]) VALUES (3, 3, N'Hoa Binh', N'2020-07-17 14:42:01', CAST(N'2020-07-23T14:42:01.0000000' AS DateTime2), 2, CAST(1550000 AS Decimal(10, 0)), 0)
INSERT [dbo].[orders] ([orderId], [customerId], [address], [dateBuy], [dateDone], [roomId], [price], [status]) VALUES (4, 4, N'Thanh Hoa', N'2020-07-15 21:21:26', CAST(N'2020-07-15T21:21:26.0000000' AS DateTime2), 3, CAST(1250000 AS Decimal(10, 0)), 0)
INSERT [dbo].[orders] ([orderId], [customerId], [address], [dateBuy], [dateDone], [roomId], [price], [status]) VALUES (5, 5, N'Bac Giang', N'2020-07-21 00:00:00', CAST(N'2020-07-21T00:00:00.0000000' AS DateTime2), 4, CAST(1150000 AS Decimal(10, 0)), 0)
INSERT [dbo].[orders] ([orderId], [customerId], [address], [dateBuy], [dateDone], [roomId], [price], [status]) VALUES (6, 2, N'Vinh Phuc', N'2022-03-01 05:25', CAST(N'2022-03-08T05:50:00.0000000' AS DateTime2), 2, CAST(1450000 AS Decimal(10, 0)), 0)
INSERT [dbo].[orders] ([orderId], [customerId], [address], [dateBuy], [dateDone], [roomId], [price], [status]) VALUES (10, 1, N'Ha Noi', N'2020-07-08 00:00:00', CAST(N'2020-07-23T00:00:00.0000000' AS DateTime2), 1, CAST(1350000 AS Decimal(10, 0)), 0)
INSERT [dbo].[orders] ([orderId], [customerId], [address], [dateBuy], [dateDone], [roomId], [price], [status]) VALUES (11, 3, N'Ha Noi', N'2022-03-01 03:25', CAST(N'2022-03-30T23:05:00.0000000' AS DateTime2), 1, CAST(2400000 AS Decimal(10, 0)), 0)
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[room] ON 

INSERT [dbo].[room] ([roomId], [roomName], [price], [typeId], [status]) VALUES (1, N'SINGLE ROOM', 2400000, 1, 1)
INSERT [dbo].[room] ([roomId], [roomName], [price], [typeId], [status]) VALUES (2, N'DOUBLE ROOM', 2400000, 2, 1)
INSERT [dbo].[room] ([roomId], [roomName], [price], [typeId], [status]) VALUES (3, N'DELUXE ROOM', 8000000, 3, 1)
INSERT [dbo].[room] ([roomId], [roomName], [price], [typeId], [status]) VALUES (4, N'FAMILY ROOM', 123123, 4, 1)
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
