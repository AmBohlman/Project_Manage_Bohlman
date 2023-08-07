USE [Moopets_currency]
GO

/****** Object:  StoredProcedure [dbo].[uspGetBank]    Script Date: 8/6/2023 11:34:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[uspGetBank]
@AccountNum int
AS

SET NOCOUNT ON;
DECLARE @ErrCode int;
SELECT *
FROM [dbo].[Bank_account]
WHERE [Account#] = @AccountNum;

SET @ErrCode = @@ERROR;
SET NOCOUNT OFF;
RETURN @ErrCode;
GO

