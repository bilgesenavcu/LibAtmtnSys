USE [LibAtmtnSys]
GO
/****** Object:  StoredProcedure [dbo].[sp_AddUser]    Script Date: 5/21/2025 5:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_AddUser]
@Name VARCHAR(50), @Surname VARCHAR(50), @Username VARCHAR(50),
@Birthdate DATE, @Role VARCHAR(10)
AS
BEGIN
INSERT INTO Users (Name, Surname, Username, Birthdate, Role)
VALUES (@Name, @Surname, @Username, @Birthdate, @Role)
END
GO
