SELECT albums.nome_album AS album,
       COUNT(tabela_cancoes_favoritas.cancao_id_favorito) AS favoritadas

FROM SpotifyClone.tabela_cancoes_favoritas

JOIN SpotifyClone.cancoes

ON tabela_cancoes_favoritas.cancao_id_favorito = cancoes.cancao_id

JOIN SpotifyClone.albums

ON cancoes.album_id = albums.album_id

GROUP BY albums.nome_album

ORDER BY favoritadas DESC

LIMIT 3;