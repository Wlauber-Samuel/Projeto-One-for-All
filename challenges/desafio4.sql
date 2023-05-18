SELECT usuarios.nome_usuario AS pessoa_usuaria,

IF (MAX(YEAR(historico_de_reproducoes.data_reproducao)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria

FROM SpotifyClone.usuarios

JOIN SpotifyClone.historico_de_reproducoes

ON usuarios.usuario_id = historico_de_reproducoes.usuario_id

GROUP BY usuarios.nome_usuario

ORDER BY nome_usuario;