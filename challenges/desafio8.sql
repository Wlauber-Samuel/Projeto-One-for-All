SELECT artistas.nome_artista AS artista,
albums.nome_album AS album

FROM SpotifyClone.artistas

JOIN SpotifyClone.albums ON albums.artista_id = artistas.artista_id

WHERE artistas.nome_artista = 'Elis Regina';

