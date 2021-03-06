
/****** Nombre: Santiago Miguel Mendez     Matricula: 16-SIIN-1-043 ******/


CREATE DATABASE [Proyecto Final 3]
GO
USE [Proyecto Final 3]
GO
/****** Object:  Table [dbo].[EdadCliente]    Script Date: 27/07/2018 10:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EdadCliente](
	[EdadCliente] [int] NULL,
	[PeliculaID] [int] NULL,
	[Duracion] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 27/07/2018 10:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pelicula](
	[PeliculaID] [int] NOT NULL,
	[Pelicula] [varchar](50) NULL,
	[ClasificaciónEdad] [int] NULL,
	[SalaID] [int] NULL,
 CONSTRAINT [PK_Pelicula] PRIMARY KEY CLUSTERED 
(
	[PeliculaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sala]    Script Date: 27/07/2018 10:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sala](
	[SalaID] [int] NOT NULL,
	[Sala] [varchar](50) NULL,
 CONSTRAINT [PK_Sala] PRIMARY KEY CLUSTERED 
(
	[SalaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[EdadCliente] ([EdadCliente], [PeliculaID], [Duracion]) VALUES (18, 1120, N'2 Horas')
INSERT [dbo].[EdadCliente] ([EdadCliente], [PeliculaID], [Duracion]) VALUES (19, 1115, N'1.5 Horas')
INSERT [dbo].[EdadCliente] ([EdadCliente], [PeliculaID], [Duracion]) VALUES (15, 1113, N'2.25 Horas')
INSERT [dbo].[EdadCliente] ([EdadCliente], [PeliculaID], [Duracion]) VALUES (14, 1115, N'1.75 Horas')
INSERT [dbo].[EdadCliente] ([EdadCliente], [PeliculaID], [Duracion]) VALUES (13, 1112, N'1.5 Horas')
INSERT [dbo].[EdadCliente] ([EdadCliente], [PeliculaID], [Duracion]) VALUES (12, 1119, N'1.5 Horas')
INSERT [dbo].[EdadCliente] ([EdadCliente], [PeliculaID], [Duracion]) VALUES (20, 1116, N'2 Horas')
INSERT [dbo].[EdadCliente] ([EdadCliente], [PeliculaID], [Duracion]) VALUES (22, 1114, N'2.5 Horas')
INSERT [dbo].[EdadCliente] ([EdadCliente], [PeliculaID], [Duracion]) VALUES (21, 1120, N'1.75 Horas')
INSERT [dbo].[EdadCliente] ([EdadCliente], [PeliculaID], [Duracion]) VALUES (17, 1117, N'2 Horas')
INSERT [dbo].[Pelicula] ([PeliculaID], [Pelicula], [ClasificaciónEdad], [SalaID]) VALUES (1111, N'Avengers: Infiniti War', 15, 1020)
INSERT [dbo].[Pelicula] ([PeliculaID], [Pelicula], [ClasificaciónEdad], [SalaID]) VALUES (1112, N'Los Increibles 2', 12, 1019)
INSERT [dbo].[Pelicula] ([PeliculaID], [Pelicula], [ClasificaciónEdad], [SalaID]) VALUES (1113, N'Pantera Negra', 15, 1018)
INSERT [dbo].[Pelicula] ([PeliculaID], [Pelicula], [ClasificaciónEdad], [SalaID]) VALUES (1114, N'Jurassic World', 16, 1017)
INSERT [dbo].[Pelicula] ([PeliculaID], [Pelicula], [ClasificaciónEdad], [SalaID]) VALUES (1115, N'Ready Player One', 14, 1016)
INSERT [dbo].[Pelicula] ([PeliculaID], [Pelicula], [ClasificaciónEdad], [SalaID]) VALUES (1116, N'Tomb Raider', 16, 1015)
INSERT [dbo].[Pelicula] ([PeliculaID], [Pelicula], [ClasificaciónEdad], [SalaID]) VALUES (1117, N'Rampage', 12, 1014)
INSERT [dbo].[Pelicula] ([PeliculaID], [Pelicula], [ClasificaciónEdad], [SalaID]) VALUES (1118, N'Maze Runner', 15, 1013)
INSERT [dbo].[Pelicula] ([PeliculaID], [Pelicula], [ClasificaciónEdad], [SalaID]) VALUES (1119, N'Campeones', 12, 1012)
INSERT [dbo].[Pelicula] ([PeliculaID], [Pelicula], [ClasificaciónEdad], [SalaID]) VALUES (1120, N'Dead Pool 2', 18, 1011)
INSERT [dbo].[Sala] ([SalaID], [Sala]) VALUES (1011, N'Sala1')
INSERT [dbo].[Sala] ([SalaID], [Sala]) VALUES (1012, N'Sala2')
INSERT [dbo].[Sala] ([SalaID], [Sala]) VALUES (1013, N'Sala3')
INSERT [dbo].[Sala] ([SalaID], [Sala]) VALUES (1014, N'Sala4')
INSERT [dbo].[Sala] ([SalaID], [Sala]) VALUES (1015, N'Sala5')
INSERT [dbo].[Sala] ([SalaID], [Sala]) VALUES (1016, N'Sala6')
INSERT [dbo].[Sala] ([SalaID], [Sala]) VALUES (1017, N'Sala7')
INSERT [dbo].[Sala] ([SalaID], [Sala]) VALUES (1018, N'Sala8')
INSERT [dbo].[Sala] ([SalaID], [Sala]) VALUES (1019, N'Sala9')
INSERT [dbo].[Sala] ([SalaID], [Sala]) VALUES (1020, N'Sala10')
ALTER TABLE [dbo].[EdadCliente]  WITH CHECK ADD  CONSTRAINT [FK_EdadCliente_Pelicula] FOREIGN KEY([PeliculaID])
REFERENCES [dbo].[Pelicula] ([PeliculaID])
GO
ALTER TABLE [dbo].[EdadCliente] CHECK CONSTRAINT [FK_EdadCliente_Pelicula]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Pelicula_Sala] FOREIGN KEY([SalaID])
REFERENCES [dbo].[Sala] ([SalaID])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_Pelicula_Sala]
GO
USE [master]
GO
ALTER DATABASE [Proyecto Final 3] SET  READ_WRITE 
GO
