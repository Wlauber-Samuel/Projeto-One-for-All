SELECT usuarios.nome_usuario AS pessoa_usuaria,
       COUNT(historico_de_reproducoes.usuario_id) AS musicas_ouvidas,
       ROUND(SUM(cancoes.duracao)/60, 2) AS total_minutos

FROM SpotifyClone.usuarios

JOIN SpotifyClone.historico_de_reproducoes

ON usuarios.usuario_id = historico_de_reproducoes.usuario_id

JOIN SpotifyClone.cancoes

ON historico_de_reproducoes.cancao_id = cancoes.cancao_id

GROUP BY usuarios.nome_usuario

ORDER BY nome_usuario;