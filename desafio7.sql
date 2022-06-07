SELECT
    artists.`name` AS artista,
    album.`name` AS album,
    COUNT(user_favorite_artist.user_id) AS seguidores
FROM
    artists
JOIN
    album ON artists.id = album.artist_id
JOIN
    user_favorite_artist ON artists.id = user_favorite_artist.artist_id
GROUP BY
    artists.`name`,
    album.`name`
ORDER BY
    seguidores DESC,
    artista,
    album;
