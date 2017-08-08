
CREATE TABLE CARTAAVISOCOBRANCA (
       CLIEA13ID            CHAR(13) NOT NULL,
       CTRCA13ID            CHAR(13) NOT NULL,
       CTRCINROPARC         INTEGER NOT NULL,
       CUPOA13ID            CHAR(13),
       CTRCN2VLR            NUMERIC(15,3),
       AVCOA60NOMECLI       CHAR(60),
       AVCOCENVIADO         CHAR(1),
       AVCODPROCESS         DATE,
       AVCODVENC            DATE,
       AVCOIDIASATRASO      INTEGER,
       PENDENTE             CHAR(1),
       REGISTRO             DATE,
       PRIMARY KEY (CLIEA13ID, CTRCA13ID, CTRCINROPARC)
);

CREATE UNIQUE INDEX XPKCARTAAVISOCOBRANCA ON CARTAAVISOCOBRANCA
(
       CLIEA13ID,
       CTRCA13ID,
       CTRCINROPARC
);