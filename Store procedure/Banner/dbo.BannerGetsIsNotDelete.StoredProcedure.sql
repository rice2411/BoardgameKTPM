USE [Mp3Project]
GO
/****** Object:  StoredProcedure [dbo].[BannerGetsIsNotDelete]    Script Date: 8/17/2020 10:54:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BannerGetsIsNotDelete]

AS
BEGIN



SELECT [BannerID]
      ,[Banner]
	  ,IsDelete
  FROM [dbo].[Banner]
  WHERE IsDelete=0
END

GO
