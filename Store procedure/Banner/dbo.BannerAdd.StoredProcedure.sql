USE [Mp3Project]
GO
/****** Object:  StoredProcedure [dbo].[BannerAdd]    Script Date: 8/17/2020 10:54:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BannerAdd]
	@Banner nvarchar(max)
AS
BEGIN
DECLARE @Message nvarchar(50)='Add Success'
INSERT INTO [dbo].[Banner]
           ([Banner]
		   ,IsDelete)
     VALUES
           (@Banner
		   ,0)

SELECT @Message as [Message]

END

GO
