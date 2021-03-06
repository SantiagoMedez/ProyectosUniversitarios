
/****** Nombre: Santiago Miguel Mendez     Matricula: 16-SIIN-1-043 ******/


CREATE DATABASE [Proyecto Final 1] 
GO
USE [Proyecto Final 1]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 27/07/2018 10:13:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[Cliente] [varchar](50) NULL,
	[VendedorID] [int] NULL,
	[ProductoID] [int] NULL,
	[CantidadProducto] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 27/07/2018 10:13:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[ProductoID] [int] NOT NULL,
	[Producto] [varchar](50) NULL,
	[Precio] [int] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[ProductoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vendedor]    Script Date: 27/07/2018 10:13:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vendedor](
	[VendedorID] [int] NOT NULL,
	[Vendedor] [varchar](50) NULL,
 CONSTRAINT [PK_Vendedor] PRIMARY KEY CLUSTERED 
(
	[VendedorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Cliente] ([Cliente], [VendedorID], [ProductoID], [CantidadProducto]) VALUES (N'Luis ', 101, 1001, 12)
INSERT [dbo].[Cliente] ([Cliente], [VendedorID], [ProductoID], [CantidadProducto]) VALUES (N'Dariel', 102, 1002, 6)
INSERT [dbo].[Cliente] ([Cliente], [VendedorID], [ProductoID], [CantidadProducto]) VALUES (N'Yonal', 103, 1007, 5)
INSERT [dbo].[Cliente] ([Cliente], [VendedorID], [ProductoID], [CantidadProducto]) VALUES (N'Neison', 104, 1004, 18)
INSERT [dbo].[Cliente] ([Cliente], [VendedorID], [ProductoID], [CantidadProducto]) VALUES (N'Camila', 105, 1005, 24)
INSERT [dbo].[Cliente] ([Cliente], [VendedorID], [ProductoID], [CantidadProducto]) VALUES (N'Julio', 106, 1003, 20)
INSERT [dbo].[Cliente] ([Cliente], [VendedorID], [ProductoID], [CantidadProducto]) VALUES (N'Antonio', 107, 1008, 3)
INSERT [dbo].[Cliente] ([Cliente], [VendedorID], [ProductoID], [CantidadProducto]) VALUES (N'Karla', 108, 1009, 4)
INSERT [dbo].[Cliente] ([Cliente], [VendedorID], [ProductoID], [CantidadProducto]) VALUES (N'Samantha', 109, 1010, 10)
INSERT [dbo].[Cliente] ([Cliente], [VendedorID], [ProductoID], [CantidadProducto]) VALUES (N'Pablo', 110, 1006, 8)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio]) VALUES (1001, N'Chinola', 12)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio]) VALUES (1002, N'China', 5)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio]) VALUES (1003, N'Uva', 2)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio]) VALUES (1004, N'Naranja', 6)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio]) VALUES (1005, N'Cereza', 8)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio]) VALUES (1006, N'Lechoza', 30)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio]) VALUES (1007, N'Mango', 20)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio]) VALUES (1008, N'Zapote', 25)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio]) VALUES (1009, N'Melon', 50)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio]) VALUES (1010, N'Limon', 16)
INSERT [dbo].[Vendedor] ([VendedorID], [Vendedor]) VALUES (101, N'German')
INSERT [dbo].[Vendedor] ([VendedorID], [Vendedor]) VALUES (102, N'Santiago')
INSERT [dbo].[Vendedor] ([VendedorID], [Vendedor]) VALUES (103, N'Pedro')
INSERT [dbo].[Vendedor] ([VendedorID], [Vendedor]) VALUES (104, N'Juan')
INSERT [dbo].[Vendedor] ([VendedorID], [Vendedor]) VALUES (105, N'Jose')
INSERT [dbo].[Vendedor] ([VendedorID], [Vendedor]) VALUES (106, N'Maria')
INSERT [dbo].[Vendedor] ([VendedorID], [Vendedor]) VALUES (107, N'Francisco')
INSERT [dbo].[Vendedor] ([VendedorID], [Vendedor]) VALUES (108, N'Carlos')
INSERT [dbo].[Vendedor] ([VendedorID], [Vendedor]) VALUES (109, N'Daniel ')
INSERT [dbo].[Vendedor] ([VendedorID], [Vendedor]) VALUES (110, N'Miguel')
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Producto] FOREIGN KEY([ProductoID])
REFERENCES [dbo].[Producto] ([ProductoID])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Producto]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Vendedor] FOREIGN KEY([VendedorID])
REFERENCES [dbo].[Vendedor] ([VendedorID])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Vendedor]
GO
USE [master]
GO
ALTER DATABASE [Proyecto Final 1] SET  READ_WRITE 
GO
