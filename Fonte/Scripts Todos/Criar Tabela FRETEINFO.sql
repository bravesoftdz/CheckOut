CREATE TABLE FRETEINFO (
    FRETA13ID         CHAR(13) NOT NULL,
    FRITICOD          INTEGER NOT NULL,
    INFOSERIE         VARCHAR(10),
    INFONOTANUM       INTEGER,
    INFODATAEMISSAO   DATE,
    INFOCFOP          INTEGER,
    INFOBASEICMS      NUMERIC(15,2),
    INFOICMS          NUMERIC(15,2),
    INFOBASEICMSST    NUMERIC(15,2),
    INFOICMSST        NUMERIC(15,2),
    INFOPESO          INTEGER,
    INFOVALORPRODUTO  NUMERIC(15,2),
    INFOVALORNOTA     NUMERIC(15,2),
    INFOCHAVE         VARCHAR(44),
    INFOTIPOOUTROS    CHAR(1),
    PRIMARY KEY (FRETA13ID, FRITICOD)	
);