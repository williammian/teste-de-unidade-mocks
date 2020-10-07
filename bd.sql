CREATE TABLE usuario (
  id BIGINT NOT NULL,
  nome VARCHAR(45) NOT NULL,
  PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE leilao (
  id BIGINT NOT NULL,
  data DATETIME NOT NULL,
  descricao VARCHAR(45) NOT NULL,
  encerrado BOOLEAN NOT NULL,
  PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE lance (
   id_leilao BIGINT NOT NULL,
   id_usuario BIGINT NOT NULL,
   valor DOUBLE NOT NULL,
   FOREIGN KEY (id_leilao) REFERENCES leilao(id),
   FOREIGN KEY (id_usuario) REFERENCES usuario(id)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO usuario (id, nome) VALUES (1, 'João');
INSERT INTO usuario (id, nome) VALUES (2, 'José');
INSERT INTO usuario (id, nome) VALUES (3, 'Maria');