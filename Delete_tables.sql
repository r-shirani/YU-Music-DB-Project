USE MusicStoreDB;
GO

EXEC sp_msforeachtable 'ALTER TABLE ? NOCHECK CONSTRAINT all';
GO

-- پاک کردن تمام رکوردها از همه جدول‌ها
EXEC sp_msforeachtable 'DELETE FROM ?';
GO

-- فعال کردن مجدد محدودیت‌ها 
EXEC sp_msforeachtable 'ALTER TABLE ? WITH CHECK CHECK CONSTRAINT all';
GO

PRINT 'All tables are now EMPTY. Ready for new data!';