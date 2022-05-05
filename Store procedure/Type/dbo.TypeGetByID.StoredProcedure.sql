USE [Mp3Project]
GO
/****** Object:  StoredProcedure [dbo].[TypeGetByID]    Script Date: 8/17/2020 10:54:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		tin
-- Create date: 30/07/2020
-- Description:	Get list Type Id Admin
-- =============================================
CREATE PROCEDURE [dbo].[TypeGetByID] 
	@TypeId INT
AS
BEGIN
SELECT [TypeID]
      ,[TypeName]
        ,Poster
   FROM [dbo].[Type]
  Where TypeId = @TypeId 

END
GO
