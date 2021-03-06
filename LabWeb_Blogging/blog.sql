USE [master]
GO
/****** Object:  Database [Blog]    Script Date: 9/22/2020 8:37:25 PM ******/
CREATE DATABASE [LAB_Blogging]


GO
CREATE TABLE [dbo].[Blog](
	[title] [varchar](255) NOT NULL,
	[content] [text] NULL,
	[type] [varchar](255) NOT NULL,
	[published] [varchar](255) NOT NULL,
	[author] [varchar](255) NOT NULL,
	[banner] [varchar](255) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogType]    Script Date: 9/22/2020 8:37:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogType](
	[id] [int] NOT NULL,
	[type] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([title], [content], [type], [published], [author], [banner], [id]) VALUES (N'Essential skills for a happy life!', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.

At eam doctus oportere, eam feugait delectus ne. Quo cu vulputate persecuti. Eum ut natum possim comprehensam, habeo dicta scaevola eu nec. Ea adhuc reformidans eam. Pri dolore epicuri eu, ne cum tantas fierent instructior. Pro ridens intellegam ut, sea at graecis scriptorem eloquentiam.

Per an labitur lucilius ullamcorper, esse erat ponderum ad vim. Possim laoreet suscipit ex pri, vix numquam eruditi feugait in. Nec maluisset complectitur te, at sea decore semper. Falli numquam perpetua sea et, tibique repudiandae an pro. Ut his solum persius postulant. Soluta nemore debitis ne eos, cum an scripta pericula partiendo', N'3', N'2020-09-17', N'Haruru', N'i2.jpg', 1)
INSERT [dbo].[Blog] ([title], [content], [type], [published], [author], [banner], [id]) VALUES (N'You''ve gotta dance', N'You''ve gotta dance like there''s nobody watching,
Love like you''ll never be hurt,
Sing like there''s nobody listening,
And live like it''s heaven on earth', N'1', N'2020-09-17', N'Haruru', NULL, 2)
INSERT [dbo].[Blog] ([title], [content], [type], [published], [author], [banner], [id]) VALUES (N'Photo', NULL, N'2', N'2020-09-17', N'Haruru', N'i1.jpg', 3)
INSERT [dbo].[Blog] ([title], [content], [type], [published], [author], [banner], [id]) VALUES (N'It''s Summer Time <3', NULL, N'2', N'2020-09-19', N'ViruSs', N'i3.jpg', 4)
INSERT [dbo].[Blog] ([title], [content], [type], [published], [author], [banner], [id]) VALUES (N'Today is a good day to die <3', N'Thanh xuan nhu 1 chen tra, uong het chen tra het ba thanh xuan :)', N'1', N'2020-09-19', N'ViruSs', NULL, 5)
INSERT [dbo].[Blog] ([title], [content], [type], [published], [author], [banner], [id]) VALUES (N'About me', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.

Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum', N'4', N'2020-09-19', N'ViruSs', NULL, 6)
SET IDENTITY_INSERT [dbo].[Blog] OFF
INSERT [dbo].[BlogType] ([id], [type]) VALUES (1, N'Quote')
INSERT [dbo].[BlogType] ([id], [type]) VALUES (2, N'Photo')
INSERT [dbo].[BlogType] ([id], [type]) VALUES (3, N'Blog')
INSERT [dbo].[BlogType] ([id], [type]) VALUES (4, N'About')
USE [master]
GO
ALTER DATABASE [Blog] SET  READ_WRITE 
GO
