
/****** Nombre: Santiago Miguel Mendez     Matricula: 16-SIIN-1-043 ******/


CREATE DATABASE [Proyecto Final 2]
GO
USE [Proyecto Final 2]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 27/07/2018 10:14:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[EmpleadoID] [int] NOT NULL,
	[Empleado] [varchar](50) NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[EmpleadoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 27/07/2018 10:14:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Puesto](
	[PuestoID] [int] NOT NULL,
	[Puesto] [varchar](50) NULL,
 CONSTRAINT [PK_Puesto] PRIMARY KEY CLUSTERED 
(
	[PuestoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Salario]    Script Date: 27/07/2018 10:14:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salario](
	[Salario] [int] NULL,
	[PuestoID] [int] NULL,
	[EmpleadoID] [int] NULL
) ON [PRIMARY]

GO
INSERT [dbo].[Empleado] ([EmpleadoID], [Empleado]) VALUES (10001, N'Jesus')
INSERT [dbo].[Empleado] ([EmpleadoID], [Empleado]) VALUES (10002, N'Moises')
INSERT [dbo].[Empleado] ([EmpleadoID], [Empleado]) VALUES (10003, N'Mario')
INSERT [dbo].[Empleado] ([EmpleadoID], [Empleado]) VALUES (10004, N'David')
INSERT [dbo].[Empleado] ([EmpleadoID], [Empleado]) VALUES (10005, N'Tereza')
INSERT [dbo].[Empleado] ([EmpleadoID], [Empleado]) VALUES (10006, N'Natalia')
INSERT [dbo].[Empleado] ([EmpleadoID], [Empleado]) VALUES (10007, N'Kevin')
INSERT [dbo].[Empleado] ([EmpleadoID], [Empleado]) VALUES (10008, N'Daniel')
INSERT [dbo].[Empleado] ([EmpleadoID], [Empleado]) VALUES (10009, N'Ramona')
INSERT [dbo].[Empleado] ([EmpleadoID], [Empleado]) VALUES (10010, N'Eduardo')
INSERT [dbo].[Puesto] ([PuestoID], [Puesto]) VALUES (10020, N'Vendedor')
INSERT [dbo].[Puesto] ([PuestoID], [Puesto]) VALUES (10021, N'Contable')
INSERT [dbo].[Puesto] ([PuestoID], [Puesto]) VALUES (10022, N'Secretario')
INSERT [dbo].[Puesto] ([PuestoID], [Puesto]) VALUES (10023, N'Gerente')
INSERT [dbo].[Puesto] ([PuestoID], [Puesto]) VALUES (10024, N'Cajero')
INSERT [dbo].[Puesto] ([PuestoID], [Puesto]) VALUES (10025, N'Conserje')
INSERT [dbo].[Puesto] ([PuestoID], [Puesto]) VALUES (10026, N'Digitador')
INSERT [dbo].[Puesto] ([PuestoID], [Puesto]) VALUES (10027, N'Coordinador')
INSERT [dbo].[Puesto] ([PuestoID], [Puesto]) VALUES (10028, N'Recepcionaista')
INSERT [dbo].[Puesto] ([PuestoID], [Puesto]) VALUES (10029, N'Recursos Humanos')
INSERT [dbo].[Salario] ([Salario], [PuestoID], [EmpleadoID]) VALUES (10000, 10024, 10001)
INSERT [dbo].[Salario] ([Salario], [PuestoID], [EmpleadoID]) VALUES (18000, 10021, 10005)
INSERT [dbo].[Salario] ([Salario], [PuestoID], [EmpleadoID]) VALUES (15000, 10022, 10007)
INSERT [dbo].[Salario] ([Salario], [PuestoID], [EmpleadoID]) VALUES (25000, 10023, 10003)
INSERT [dbo].[Salario] ([Salario], [PuestoID], [EmpleadoID]) VALUES (8000, 10020, 10008)
INSERT [dbo].[Salario] ([Salario], [PuestoID], [EmpleadoID]) VALUES (6000, 10025, 10002)
INSERT [dbo].[Salario] ([Salario], [PuestoID], [EmpleadoID]) VALUES (11000, 10027, 10009)
INSERT [dbo].[Salario] ([Salario], [PuestoID], [EmpleadoID]) VALUES (19000, 10029, 10004)
INSERT [dbo].[Salario] ([Salario], [PuestoID], [EmpleadoID]) VALUES (11500, 10028, 10006)
INSERT [dbo].[Salario] ([Salario], [PuestoID], [EmpleadoID]) VALUES (12000, 10026, 10010)
ALTER TABLE [dbo].[Salario]  WITH CHECK ADD  CONSTRAINT [FK_Salario_Empleado] FOREIGN KEY([EmpleadoID])
REFERENCES [dbo].[Empleado] ([EmpleadoID])
GO
ALTER TABLE [dbo].[Salario] CHECK CONSTRAINT [FK_Salario_Empleado]
GO
ALTER TABLE [dbo].[Salario]  WITH CHECK ADD  CONSTRAINT [FK_Salario_Puesto] FOREIGN KEY([PuestoID])
REFERENCES [dbo].[Puesto] ([PuestoID])
GO
ALTER TABLE [dbo].[Salario] CHECK CONSTRAINT [FK_Salario_Puesto]
GO
USE [master]
GO
ALTER DATABASE [Proyecto Final 2] SET  READ_WRITE 
GO
