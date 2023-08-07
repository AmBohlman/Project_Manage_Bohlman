USE [Moopets_currency]
GO

/****** Object:  StoredProcedure [dbo].[uspGetCurrency]    Script Date: 8/6/2023 11:34:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[uspGetCurrency]
@Currency_Code varchar(50)
AS

SET NOCOUNT ON;
DECLARE @ErrCode int;
SELECT *
FROM [dbo].[Currency]
WHERE [Currency_code] = @Currency_Code;

SET @ErrCode = @@ERROR;
SET NOCOUNT OFF;
RETURN @ErrCode;
GO

