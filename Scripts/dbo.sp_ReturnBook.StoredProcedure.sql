USE [LibAtmtnSys]
GO
/****** Object:  StoredProcedure [dbo].[sp_ReturnBook]    Script Date: 5/21/2025 5:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ReturnBook]
    @BorrowID INT
AS
BEGIN
    UPDATE BorrowedBooks
    SET ReturnedDate = GETDATE()
    WHERE BorrowID = @BorrowID;

    DECLARE @BookID INT;
    SELECT @BookID = BookID FROM BorrowedBooks WHERE BorrowID = @BorrowID;

    UPDATE Books
    SET IsAvailable = 1
    WHERE BookID = @BookID;
END
GO
