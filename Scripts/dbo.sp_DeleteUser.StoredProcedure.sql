USE [LibAtmtnSys]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteUser]    Script Date: 5/21/2025 5:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteUser]
@UserID INT
AS
BEGIN
DELETE FROM Users WHERE UserID = @UserID
END
GO
