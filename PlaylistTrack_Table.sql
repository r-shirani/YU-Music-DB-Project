USE MusicStoreDB;
GO

INSERT INTO PlaylistTrack (PlaylistId, TrackId)
SELECT
    PlayList.PlayListId,
    Track.TrackId
FROM PlayList, Track
WHERE NOT EXISTS (
    SELECT *
    FROM PlaylistTrack
    WHERE PlaylistTrack.PlaylistId = PlayList.PlayListId
      AND PlaylistTrack.TrackId = Track.TrackId
);

GO
PRINT 'PlaylistTrack table populated with generated data!';