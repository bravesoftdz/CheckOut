CREATE TABLE CONFIGETIQUETACODIGOBARRA (
       CFCBICOD             INTEGER NOT NULL,
       CFCBA60DESCR         CHAR(60),
       CFCBA20MODELOIMPRESSORA CHAR(20),
       CFCBA4PORTASERIAL    CHAR(4),
       CFCBA100PATHEXEIMP   CHAR(100),
       CFCBA254TEXTOTERM    VARCHAR(254),
       CFCBA100PATHARQTXT   CHAR(100),
       PENDENTE             CHAR(1),
       REGISTRO             DATE,
       PRIMARY KEY (CFCBICOD)
);

CREATE UNIQUE INDEX XPKCONFIGETIQUETACODIGOBARRA ON CONFIGETIQUETACODIGOBARRA
(
       CFCBICOD
);