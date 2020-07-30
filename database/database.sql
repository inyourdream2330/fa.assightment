USE [javaweb]
GO
/****** Object:  Table [dbo].[personal]    Script Date: 7/30/2020 4:23:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personal](
	[personal_id] [int] NOT NULL,
	[description] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[first_name] [varchar](255) NULL,
	[gender] [varchar](255) NULL,
	[hobbies] [varchar](255) NULL,
	[last_name] [varchar](255) NULL,
	[you_are_in] [varchar](255) NULL,
	[telephone] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[personal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[personal] ([personal_id], [description], [email], [first_name], [gender], [hobbies], [last_name], [you_are_in], [telephone]) VALUES (2, N'yhetyhteyh', N'asdfasd@gmail.com', N'fadfsdr', N'Female', N'cooking,shopping,sing', N'fasdfasdf', N'asia', N'2342353452')
INSERT [dbo].[personal] ([personal_id], [description], [email], [first_name], [gender], [hobbies], [last_name], [you_are_in], [telephone]) VALUES (3, N'ok nha', N'nhatct@gmail.com', N'minh', N'Male', N'swimming,cooking,shopping', N'nguye', N'australia', N'987654123')
INSERT [dbo].[personal] ([personal_id], [description], [email], [first_name], [gender], [hobbies], [last_name], [you_are_in], [telephone]) VALUES (12, N'qweqwe', N'levannhatct@gmail.com', N'hahhahahaha', N'Female', N'swimming,sport', N'hujuhuhuhuhu', N'europe', N'1231231')
