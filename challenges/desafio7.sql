SELECT artistas.nome_artista AS artista,
    albums.nome_album AS album,
    COUNT(*) AS pessoas_seguidoras
    
FROM SpotifyClone.albums

JOIN SpotifyClone.artistas ON artistas.artista_id = albums.artista_id

JOIN SpotifyClone.artistas_seguidos ON artistas.artista_id = artistas_seguidos.artista_id

GROUP BY albums.nome_album, artistas.nome_artista

ORDER BY pessoas_seguidoras DESC, artista ASC, album ASC;
