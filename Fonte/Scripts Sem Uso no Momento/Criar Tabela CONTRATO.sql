CREATE TABLE CONTRATO 
(
  CONTA13ID                  CHAR(13) NOT NULL,
  TPCTICOD                   INTEGER,
  CONTICOD                   INTEGER,
  CONTA60DESCR               CHAR(60),
  CONTA13IDCONTRATANTE       CHAR(13),
  CONTA60CONTATO             CHAR(60),
  CONTA13IDEMPCONBRANCA      CHAR(13),
  CONTA60RESPONSAVEL         CHAR(60),
  CONTIPERIODO               INTEGER,
  CONTDINICIO                TIMESTAMP,
  CONTDTERMINO               TIMESTAMP,
  CONTCRENOVACAOAUTO         CHAR(1),
  CONTDLIMITERENOVAUTO       TIMESTAMP,
  CONTDULTRENOV              TIMESTAMP,
  CONTDDATABASE              TIMESTAMP,
  CONTN3VLRPARCELA           NUMERIC(15, 3),
  CONTCSITUACAO              CHAR(1),
  CONTDDATASITUACAO          TIMESTAMP,
  CONTA254OBS                CHAR(254),
  PLCTA15COD                 CHAR(15),
  TPDCICOD                   INTEGER,
  CONTA5SERIENF              CHAR(5),
  AVALA13ID                  CHAR(13),
  PORTICOD                   INTEGER,
  HTPDICOD                   INTEGER,
  CONTN3PERCJUROSMES         NUMERIC(15, 3),
  REGISTRO                   TIMESTAMP,
  PENDENDE                   CHAR(1),
  CONTCMODALIDADE            CHAR(1),
  CONTBCORPOCONTRATO         BLOB SUB_TYPE TEXT SEGMENT SIZE 80,
  CONTDEMISSAO               TIMESTAMP,
  EMPRICOD                   INTEGER,
  TERMICOD                   INTEGER,
  CONTCEXEBIRDADOEMP         CHAR(1),
  CONTCEXEBIRRODAP           CHAR(1),
  CONTN2VLRTOTAL             NUMERIC(15, 2),
  NUMEICOD                   INTEGER,
 PRIMARY KEY (CONTA13ID)
);