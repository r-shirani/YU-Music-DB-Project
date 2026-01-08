USE MusicStoreDB;
GO

INSERT INTO InvoiceLine
SELECT
    InvoiceId * 1000 + TrackId AS InvoiceLineId,
    InvoiceId,
    TrackId,
    UnitPrice,
    1
FROM Invoice, Track
WHERE NOT EXISTS (
    SELECT *
    FROM InvoiceLine
    WHERE InvoiceLine.InvoiceId = Invoice.InvoiceId
      AND InvoiceLine.TrackId = Track.TrackId
);


UPDATE Invoice
SET Total += (
    SELECT SUM(InvoiceLine.UnitPrice * InvoiceLine.Quantity)
    FROM InvoiceLine
    WHERE InvoiceLine.InvoiceId = Invoice.InvoiceId);

GO
PRINT 'InvoiceLine table populated with generated data!';