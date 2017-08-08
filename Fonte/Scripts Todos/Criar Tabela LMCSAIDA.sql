CREATE TABLE LMCSAIDA
(
EMPRICOD        INTEGER NOT NULL,
LILMICOD        INTEGER NOT NULL,
LMSAIPAGATUAL   INTEGER NOT NULL,
PRODICOD        INTEGER NOT NULL,
BOMBICOD        INTEGER NOT NULL,
LMSADDTMOV      DATE,
TANQICOD        INTEGER,
LMSAN2FECHAME   NUMERIC(15,2),
LMSAN2ABERTUR   NUMERIC(15,2),
LMSAN2AFERIR    NUMERIC(15,2),
PENDENTE        CHAR(01),
REGISTRO        DATE,  
PRIMARY KEY(EMPRICOD, LILMICOD, LMSAIPAGATUAL, PRODICOD, BOMBICOD));