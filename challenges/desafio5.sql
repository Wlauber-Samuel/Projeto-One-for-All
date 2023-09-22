SELECT cancoes.nome_cancao AS cancao,

COUNT(historico_de_reproducoes.usuario_id) AS reproducoes

FROM SpotifyClone.historico_de_reproducoes

JOIN SpotifyClone.cancoes

ON historico_de_reproducoes.cancao_id = cancoes.cancao_id

GROUP BY cancoes.cancao_id

ORDER BY reproducoes DESC, cancao ASC

LIMIT 2;
