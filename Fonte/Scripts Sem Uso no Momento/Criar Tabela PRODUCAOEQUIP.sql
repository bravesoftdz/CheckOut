CREATE TABLE PRODUCAOEQUIP 
(
  PREQA13ID                  CHAR(13) NOT NULL,
  PREQICOD                   INTEGER,
  PREQA60DESCR               CHAR(60),
  PREQDCOMPRA                TIMESTAMP,
  PREQN2VLRCOMPRA            INTEGER,
  REGISTRO                   TIMESTAMP,
  PENDENTE                   CHAR(1),
  EMPRICOD                   INTEGER,
  PREQN2TEMPOAQUEC           INTEGER,
 PRIMARY KEY (PREQA13ID)
);