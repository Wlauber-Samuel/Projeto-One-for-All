USE SpotifyClone;

-- Tabela de cancoes favoritas
CREATE TABLE IF NOT EXISTS SpotifyClone.tabela_cancoes_favoritas (
	usuario_id_favorito INT NOT NULL,
	cancao_id_favorito INT NOT NULL,
	CONSTRAINT PRIMARY KEY (usuario_id_favorito, cancao_id_favorito),
	FOREIGN KEY (usuario_id_favorito) REFERENCES SpotifyClone.usuarios (usuario_id),
	FOREIGN KEY (cancao_id_favorito) REFERENCES SpotifyClone.cancoes (cancao_id)
) engine = InnoDB;

-- Inserindo dados na tabela de cancoes favoritas
INSERT INTO SpotifyClone.tabela_cancoes_favoritas (usuario_id_favorito, cancao_id_favorito)
VALUES 
		(1, 3),
        (1, 6),
        (1, 10),
        (2, 4),
        (3, 1),
        (3, 3),
        (4, 7),
        (4, 4),
        (5, 10),
        (5, 2),
        (8, 4),
        (9, 7),
        (10, 3);