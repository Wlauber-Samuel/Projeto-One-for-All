SELECT (artistas.nome_artista) AS artista,

    CASE WHEN COUNT(*) < 2 THEN '-'
         WHEN COUNT(*) BETWEEN 1 AND 2 THEN 'C'
         WHEN COUNT(*) BETWEEN 3 AND 4 THEN 'B'
         WHEN COUNT(*) > 4 THEN 'A'
    END AS ranking

FROM SpotifyClone.artistas

JOIN SpotifyClone.albums

ON artistas.artista_id = albums.artista_id

JOIN SpotifyClone.cancoes

ON albums.album_id = cancoes.album_id

LEFT JOIN SpotifyClone.tabela_cancoes_favoritas

ON cancoes.cancao_id = tabela_cancoes_favoritas.cancao_id_favorito

GROUP BY artistas.nome_artista

ORDER BY IF(ranking = '-', 'D', ranking), artista;