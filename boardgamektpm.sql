USE [Boardgame]
GO
/****** Object:  User [rice]    Script Date: 11/5/2022 8:27:26 AM ******/
CREATE USER [rice] FOR LOGIN [rice] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[CreateBy] [int] NULL,
	[CreateAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[Id] [int] NOT NULL,
	[Stars] [int] NOT NULL,
	[Comment] [nvarchar](max) NOT NULL,
	[ProductId] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Rate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedbackImages]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedbackImages](
	[Id] [int] NOT NULL,
	[Path] [nvarchar](max) NOT NULL,
	[FeedbackId] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_RateImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[VoucherId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[UserAddressId] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quanity] [int] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[ProductPriceId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Players] [nvarchar](max) NOT NULL,
	[PlayersSuggest] [int] NOT NULL,
	[Time] [nvarchar](max) NOT NULL,
	[AgeSuggest] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[MainImage] [nvarchar](max) NOT NULL,
	[ShortDesc] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Brand] [nvarchar](max) NOT NULL,
	[Origin] [nvarchar](max) NOT NULL,
	[Weight] [float] NOT NULL,
	[Size] [nvarchar](max) NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Path] [nvarchar](max) NOT NULL,
	[ProductId] [int] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPrice]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPrice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_ProductPrice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductViews]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductViews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[View] [int] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_ProductViews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Role] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[DOB] [date] NOT NULL,
	[Gender] [bit] NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Avatar] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAddress]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAddress](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_UserAddress] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserVoucher]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserVoucher](
	[Id] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[VoucherId] [int] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_UserVoucher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Expired] [date] NOT NULL,
	[Amount] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[Type] [bit] NOT NULL,
	[Value] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [IsDelete], [CreateBy], [CreateAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'Board game gia đình', 0, 1, CAST(N'2022-01-01T00:00:00.000' AS DateTime), 1, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [IsDelete], [CreateBy], [CreateAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'nhung', 1, 1, CAST(N'2022-05-09T10:47:06.460' AS DateTime), 1, CAST(N'2022-05-09T10:50:05.350' AS DateTime))
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Players], [PlayersSuggest], [Time], [AgeSuggest], [CategoryId], [MainImage], [ShortDesc], [Description], [Brand], [Origin], [Weight], [Size], [IsDelete], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'Lớp Học Mật Ngữ - Siêu Thú Ngân Hà', N'2 - 6 người', 4, N'45 - 60 phút', 8, 1, N'https://boardgame.vn/uploads/u/boardgame.vn/product/2021/05/05/18/55/600_600/zbv1620194135.png', N'Một chuyến phiêu lưu mới đầy bất ngờ và hấp dẫn, cùng 12 cùng hoàng đạo lớp học mật ngữ', N'Tiếp nối thành công vang dội của board game Cuộc Đua Sao Chổi, “Lớp Học Mật Ngữ” đã quay trở lại với một diện mạo hoàn toàn mới, mở ra một chuyến phiêu lưu màu sắc và đầy kỳ bí mang tên: SIÊU THÚ NGÂN HÀ.

Với nét vẽ được thổi hồn ấn tượng bởi chính nhóm tác giả B.R.O cùng lối chơi hài hước, nâng tầm tư duy chiến thuật từ Board Game VN, Siêu Thú Ngân Hà chắc chắn sẽ làm thỏa mãn sự kì vọng không chỉ fan bộ truyện Lớp Học Mật Ngữ, mà còn cả tín đồ cuồng mộ board game.

Mới Lạ - Độc Đáo - Gay Cấn Và Đầy Vui Nhộn

 

Những thách thức và bí mật nào đang chờ đón 12 chòm sao của chúng ta trên hành trình phía trước?

 

Cùng tìm hiểu ngay bây giờ nhé!', N'BoardgameVNnn', N'Việt Nam', 11, N'26.5 x 26.5 x 8.5cm', 0, 1, CAST(N'2022-01-01T00:00:00.000' AS DateTime), 1, CAST(N'2022-05-05T15:06:17.287' AS DateTime))
INSERT [dbo].[Product] ([Id], [Name], [Players], [PlayersSuggest], [Time], [AgeSuggest], [CategoryId], [MainImage], [ShortDesc], [Description], [Brand], [Origin], [Weight], [Size], [IsDelete], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (11, N'Conan', N'1 -2 người ', 2, N'15 phút', 9, 1, N'abc', N'abc', N'abc', N'abcc', N'abc', 11, N'abc', 0, 1, CAST(N'2022-01-01T00:00:00.000' AS DateTime), 1, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Players], [PlayersSuggest], [Time], [AgeSuggest], [CategoryId], [MainImage], [ShortDesc], [Description], [Brand], [Origin], [Weight], [Size], [IsDelete], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (12, N'string', N'string', 0, N'string', 0, 1, N'string', N'string', N'string', N'string', N'string', 0, N'string', 1, 1, CAST(N'2022-05-05T14:39:37.837' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImages] ON 

INSERT [dbo].[ProductImages] ([Id], [Path], [ProductId], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [IsDelete]) VALUES (3, N'https://boardgame.vn/uploads/u/boardgame.vn/product/2021/04/03/00/06/fvi1617361567.jpg', 3, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductPrice] ON 

INSERT [dbo].[ProductPrice] ([Id], [ProductId], [Price], [CreatedAt], [CreatedBy]) VALUES (5, 3, 10000, CAST(N'2022-01-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[ProductPrice] ([Id], [ProductId], [Price], [CreatedAt], [CreatedBy]) VALUES (7, 3, 20000, CAST(N'2022-02-02T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[ProductPrice] ([Id], [ProductId], [Price], [CreatedAt], [CreatedBy]) VALUES (8, 3, 5000, CAST(N'2021-01-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[ProductPrice] ([Id], [ProductId], [Price], [CreatedAt], [CreatedBy]) VALUES (15, 11, 10000, CAST(N'2022-01-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[ProductPrice] ([Id], [ProductId], [Price], [CreatedAt], [CreatedBy]) VALUES (16, 11, 1500, CAST(N'2022-02-02T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[ProductPrice] ([Id], [ProductId], [Price], [CreatedAt], [CreatedBy]) VALUES (17, 12, 20000, CAST(N'2022-05-05T14:39:37.850' AS DateTime), 1)
INSERT [dbo].[ProductPrice] ([Id], [ProductId], [Price], [CreatedAt], [CreatedBy]) VALUES (19, 3, 25000, CAST(N'2022-05-05T15:06:17.287' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ProductPrice] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([Id], [Name], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (1, N'Mới tạo', NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (2, N'Đã xác nhận', NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (3, N'Hoàn thành', NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (4, N'Từ chối', NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (5, N'Huỷ', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [FullName], [Email], [Password], [Role], [IsDelete], [DOB], [Gender], [Phone], [Avatar], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (1, N'Tôn Thất Anh Minh', N'tonthatanhminhktpm@gmail.com', N'023657', 1, 0, CAST(N'2001-11-24' AS Date), 1, N'0776750418', N'avatar.png', CAST(N'2022-01-01T00:00:00.000' AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserAddress] ON 

INSERT [dbo].[UserAddress] ([Id], [UserId], [Address]) VALUES (1, 1, N'ABC')
SET IDENTITY_INSERT [dbo].[UserAddress] OFF
GO
SET IDENTITY_INSERT [dbo].[Voucher] ON 

INSERT [dbo].[Voucher] ([Id], [Code], [Expired], [Amount], [Status], [Type], [Value], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (2, N'GIAMGIA10', CAST(N'2023-01-01' AS Date), 100, 1, 1, 10, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Voucher] OFF
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Rate_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Rate_Product]
GO
ALTER TABLE [dbo].[FeedbackImages]  WITH CHECK ADD  CONSTRAINT [FK_RateImages_Rate] FOREIGN KEY([FeedbackId])
REFERENCES [dbo].[Feedback] ([Id])
GO
ALTER TABLE [dbo].[FeedbackImages] CHECK CONSTRAINT [FK_RateImages_Rate]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Status]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_ProductPrice] FOREIGN KEY([ProductPriceId])
REFERENCES [dbo].[ProductPrice] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_ProductPrice]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Type] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Type]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Product]
GO
ALTER TABLE [dbo].[ProductPrice]  WITH CHECK ADD  CONSTRAINT [FK_ProductPrice_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductPrice] CHECK CONSTRAINT [FK_ProductPrice_Product]
GO
ALTER TABLE [dbo].[ProductViews]  WITH CHECK ADD  CONSTRAINT [FK_ProductViews_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductViews] CHECK CONSTRAINT [FK_ProductViews_Product]
GO
ALTER TABLE [dbo].[UserAddress]  WITH CHECK ADD  CONSTRAINT [FK_UserAddress_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[UserAddress] CHECK CONSTRAINT [FK_UserAddress_User]
GO
ALTER TABLE [dbo].[UserVoucher]  WITH CHECK ADD  CONSTRAINT [FK_UserVoucher_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[UserVoucher] CHECK CONSTRAINT [FK_UserVoucher_User]
GO
ALTER TABLE [dbo].[UserVoucher]  WITH CHECK ADD  CONSTRAINT [FK_UserVoucher_Voucher] FOREIGN KEY([VoucherId])
REFERENCES [dbo].[Voucher] ([Id])
GO
ALTER TABLE [dbo].[UserVoucher] CHECK CONSTRAINT [FK_UserVoucher_Voucher]
GO
/****** Object:  StoredProcedure [dbo].[Category_Create]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Category_Create]
	@Name nvarchar(max),
	@CreatedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


INSERT INTO [dbo].[Category]
           ([Name]
           ,[IsDelete]
           ,[CreateBy]
           ,[CreateAt]
           )
     VALUES
           (@Name
           ,0
           ,@CreatedBy
           ,GETDATE()
         )



END
GO
/****** Object:  StoredProcedure [dbo].[Category_Delete]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Category_Delete]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;



UPDATE Category SET IsDelete = 1 WHERE Id = @Id





END
GO
/****** Object:  StoredProcedure [dbo].[Category_Edit]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Category_Edit]
	@Id int,
	@Name nvarchar(max),
	@UpdatedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;



UPDATE [dbo].[Category]
   SET [Name] = @Name
      ,[UpdatedBy] = @UpdatedBy
      ,[UpdatedAt] = GETDATE()
 WHERE Id = @Id






END
GO
/****** Object:  StoredProcedure [dbo].[Category_Get]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Category_Get]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;



SELECT * FROM Category WHERE Id = @Id and IsDelete = 0





END
GO
/****** Object:  StoredProcedure [dbo].[Category_GetList]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Category_GetList]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT * FROM Category WHERE IsDelete = 0
END
GO
/****** Object:  StoredProcedure [dbo].[Order_Create]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Order_Create] 
	@VoucherId int,
	@UserId int,
	@UserAddressId int,
	@Code nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
INSERT INTO [dbo].[Order]
           (
            [IsDelete]
           ,[VoucherId]
           ,[StatusId]
           ,[UserId]
           ,[UserAddressId]
		   ,[CreatedAt]
           ,[CreatedBy]
        )
     VALUES
           (0
           ,@VoucherId
           ,1
           ,@UserId
           ,@UserAddressId
           ,GETDATE()
           ,@UserId
           )

SELECT SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[OrderDetail_Create]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[OrderDetail_Create]
	@ProductId int,
	@Quanity int,
	@CreateBy int,
	@ProductPriceId int,
	@OrderId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


INSERT INTO [dbo].[OrderDetail]
           ([ProductId]
           ,[Quanity]
           ,[CreatedBy]
           ,[CreatedAt]
           ,[ProductPriceId]
           ,[OrderId])
     VALUES
           (@ProductId
           ,@Quanity
           ,@CreateBy
           ,GETDATE()
           ,@ProductPriceId
           ,@OrderId)



END
GO
/****** Object:  StoredProcedure [dbo].[Product_Create]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Product_Create]
	@Name nvarchar(max),
	@Players nvarchar(max),
	@PlayersSuggest int,
	@Time nvarchar(max),
	@AgeSuggest int,
	@CategoryId int,
	@MainImage nvarchar(max),
	@ShortDesc nvarchar(max),
	@Description nvarchar(max),
	@Price float,
	@Brand nvarchar(max),
	@Origin nvarchar(max),
	@Weight nvarchar(max),
	@Size nvarchar(max),
	@CreatedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


INSERT INTO [dbo].[Product]
           ([Name]
           ,[Players]
           ,[PlayersSuggest]
           ,[Time]
           ,[AgeSuggest]
           ,[CategoryId]
           ,[MainImage]
           ,[ShortDesc]
           ,[Description]
   
           ,[Brand]
           ,[Origin]
           ,[Weight]
           ,[Size]
           ,[IsDelete]
           ,[CreatedBy],
		   [CreatedAt])
     VALUES
           (@Name
           ,@Players
           ,@PlayersSuggest
           ,@Time
           ,@AgeSuggest
           ,@CategoryId
           ,@MainImage
           ,@ShortDesc
           ,@Description

           ,@Brand
           ,@Origin
           ,@Weight
           ,@Size
           ,0
           ,@CreatedBy
           ,GETDATE()
         )


INSERT INTO [dbo].[ProductPrice]
           ([ProductId]
           ,[Price]
           ,[CreatedAt]
           ,[CreatedBy])
     VALUES
           (SCOPE_IDENTITY()
           ,@Price
           ,GETDATE()
           ,@CreatedBy )

		 	


END
GO
/****** Object:  StoredProcedure [dbo].[Product_Delete]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Product_Delete]
@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	UPDATE Product SET IsDelete = 1 WHERE Id= @Id
END
GO
/****** Object:  StoredProcedure [dbo].[Product_Edit]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Product_Edit]
	@Id int,
	@Name nvarchar(max),
	@Players nvarchar(max),
	@PlayersSuggest int,
	@Time nvarchar(max),
	@AgeSuggest int,
	@CategoryId int,
	@MainImage nvarchar(max),
	@ShortDesc nvarchar(max),
	@Description nvarchar(max),
	@Price float,
	@Brand nvarchar(max),
	@Origin nvarchar(max),
	@Weight nvarchar(max),
	@Size nvarchar(max),
	@UpdateBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


UPDATE [dbo].[Product]
   SET [Name] =@Name
      ,[Players] = @Players
      ,[PlayersSuggest] =  @PlayersSuggest
      ,[Time] = @Time
      ,[AgeSuggest] = @AgeSuggest
      ,[CategoryId] = @CategoryId
      ,[MainImage] = @MainImage
      ,[ShortDesc] = @ShortDesc
      ,[Description] =@Description
      ,[Brand] = @Brand
      ,[Origin] = @Origin
      ,[Weight] = @Weight
      ,[Size] = @Size
      ,[UpdatedBy] = @UpdateBy
      ,[UpdatedAt] = GETDATE()
 WHERE Id = @Id
 DECLARE @PriceOrigin as float
 SET @PriceOrigin = ( SELECT TOP(1) Price 
					 FROM ProductPrice 
					 WHERE ProductId = 3   
					 ORDER BY convert(datetime, ProductPrice.CreatedAt, 103) DESC )

 IF(@Price <> @PriceOrigin)
	BEGIN
	INSERT INTO [dbo].[ProductPrice]
           ([ProductId]
           ,[Price]
           ,[CreatedAt]
           ,[CreatedBy])
     VALUES
           (@Id
           ,@Price
           ,GETDATE()
           ,@UpdateBy )
	END


END
GO
/****** Object:  StoredProcedure [dbo].[Product_Get]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Product_Get]
@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT p.[Id]
      ,[Name]
      ,[Players]
      ,[PlayersSuggest]
      ,[Time]
      ,[AgeSuggest]
      ,[CategoryId]
      ,[MainImage]
      ,[ShortDesc]
      ,[Description]
      ,[Brand]
      ,[Origin]
      ,[Weight]
      ,[Size]
      ,[IsDelete]
      ,p.[CreatedBy]
      ,p.[CreatedAt]
      ,[UpdatedBy]
      ,[UpdatedAt]
	  ,pp.Price
  FROM [Boardgame].[dbo].[Product] as P
  JOIN ProductPrice as pp on p.Id = pp.ProductId
  WHERE p.Id = @Id
  GROUP BY  p.[Id]
      ,[Name]
      ,[Players]
      ,[PlayersSuggest]
      ,[Time]
      ,[AgeSuggest]
      ,[CategoryId]
      ,[MainImage]
      ,[ShortDesc]
      ,[Description]
	  ,pp.Price
      ,[Brand]
      ,[Origin]
      ,[Weight]
      ,[Size]
      ,[IsDelete]
      ,p.[CreatedBy]
      ,p.[CreatedAt]
      ,[UpdatedBy]
      ,[UpdatedAt]
  HAVING pp.Price =
				  (
				  SELECT TOP(1) ProductPrice.Price
				  FROM ProductPrice JOIN Product on ProductPrice.ProductId = Product.Id  
				  WHERE Product.Id =p.Id  and ProductPrice.CreatedAt <GETDATE()
				  ORDER BY convert(datetime, ProductPrice.CreatedAt, 103) DESC
				)

END
GO
/****** Object:  StoredProcedure [dbo].[Product_GetImages]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Product_GetImages]
@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT Path
	FROM ProductImages 
	WHERE ProductId = @Id and IsDelete =0
END
GO
/****** Object:  StoredProcedure [dbo].[Product_GetList]    Script Date: 11/5/2022 8:27:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Product_GetList]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

/****** Script for SelectTopNRows command from SSMS  ******/
SELECT p.[Id]
      ,[Name]
      ,[Players]
      ,[PlayersSuggest]
      ,[Time]
      ,[AgeSuggest]
      ,[CategoryId]
      ,[MainImage]
      ,[ShortDesc]
      ,[Description]
      ,[Brand]
      ,[Origin]
      ,[Weight]
      ,[Size]
      ,[IsDelete]
      ,p.[CreatedBy]
      ,p.[CreatedAt]
      ,[UpdatedBy]
      ,[UpdatedAt]
	  ,pp.Price
  FROM [Boardgame].[dbo].[Product] as P
  JOIN ProductPrice as pp on p.Id = pp.ProductId
  WHERE IsDelete = 0
  GROUP BY  p.[Id]
      ,[Name]
      ,[Players]
      ,[PlayersSuggest]
      ,[Time]
      ,[AgeSuggest]
      ,[CategoryId]
      ,[MainImage]
      ,[ShortDesc]
      ,[Description]
	  ,pp.Price
      ,[Brand]
      ,[Origin]
      ,[Weight]
      ,[Size]
      ,[IsDelete]
      ,p.[CreatedBy]
      ,p.[CreatedAt]
      ,[UpdatedBy]
      ,[UpdatedAt]
  HAVING pp.Price =
				  (
				  SELECT TOP(1) ProductPrice.Price
				  FROM ProductPrice JOIN Product on ProductPrice.ProductId = Product.Id  
				  WHERE Product.Id =p.Id  and ProductPrice.CreatedAt <GETDATE()
				  ORDER BY convert(datetime, ProductPrice.CreatedAt, 103) DESC
				)

 
END
GO
