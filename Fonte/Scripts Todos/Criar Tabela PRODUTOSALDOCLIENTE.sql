CREATE TABLE PRODUTOSALDOCLIENTE
(
  CLIEA13ID	CHAR(13) NOT NULL,
  PRODICOD	INTEGER NOT NULL,
  PSLCN3QTDE	NUMERIC(15, 3),
  PSLCN3QTDMIN	NUMERIC(15, 3),
  PSLCN3QTDMAX	NUMERIC(15, 3),
  PENDENTE	CHAR(1),
  REGISTRO	TIMESTAMP,
  PRIMARY KEY (CLIEA13ID, PRODICOD)
);

CREATE INDEX XPENDENTE_PRODSLCLI ON PRODUTOSALDOCLI(PENDENTE);
CREATE INDEX XREGISTRO_PRODSLCLI ON PRODUTOSALDOCLI(REGISTRO);