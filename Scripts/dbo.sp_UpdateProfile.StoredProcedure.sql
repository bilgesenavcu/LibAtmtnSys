USE [LibAtmtnSys]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateProfile]    Script Date: 5/21/2025 5:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateProfile]
@UserID INT, @Name VARCHAR(50), @Surname VARCHAR(50), @Birthdate DATE
AS
BEGIN
UPDATE Users SET Name=@Name, Surname=@Surname, Birthdate=@Birthdate WHERE UserID = @UserID
END
GO
