CREATE TABLE AGENDA 
(
  AGENA13ID	CHAR(13) NOT NULL,
  EMPRICOD	INTEGER NOT NULL,
  TERMICOD	INTEGER NOT NULL,
  AGENICOD	INTEGER NOT NULL,
  AGENDCADASTRO	TIMESTAMP,
  AGENDCOMPROMISSO	TIMESTAMP,
  AGENHCOMPROMISSO	CHAR(8),
  AGENDALERTA	TIMESTAMP,
  AGENHALERTA	CHAR(8),
  AGENTCOMPROMISSO	CHAR(1000),
  AGENDCONCLUSAO	TIMESTAMP,
  HELPA13ID	CHAR(13),
  USUAA60LOGIN	CHAR(60),
  CATEICOD	INTEGER,
  TAREA13ID	CHAR(13),
  AGENA25STATUS	CHAR(25),
 PRIMARY KEY (AGENA13ID)
);