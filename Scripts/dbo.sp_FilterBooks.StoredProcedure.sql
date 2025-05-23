USE [LibAtmtnSys]
GO
/****** Object:  StoredProcedure [dbo].[sp_FilterBooks]    Script Date: 5/21/2025 5:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_FilterBooks]
@Category VARCHAR(50), @Language VARCHAR(50), @StartYear INT, @EndYear INT
AS
BEGIN
SELECT * FROM Books
WHERE Category=@Category AND Language=@Language AND Year BETWEEN @StartYear AND @EndYear
END
GO
