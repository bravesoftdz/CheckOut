CREATE TABLE ORD_FINALIZA (
    ORDNUM INTEGER NOT NULL,
    DATA DATE NOT NULL,
    QUANTIDADE INTEGER,
    IMPRESSO CHAR(1),
    NOTAFISCAL INTEGER,
    PRIMARY KEY (ORDNUM, DATA));