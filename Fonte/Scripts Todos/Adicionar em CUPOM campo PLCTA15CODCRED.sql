ALTER TABLE CUPOM ADD PLCTA15CODCRED CHAR(15);
CREATE INDEX CUPOM_PLCTA15CODCRED ON CUPOM (PLCTA15CODCRED);