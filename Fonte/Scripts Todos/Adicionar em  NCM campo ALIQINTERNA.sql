alter table NCM add ALIQUOTAINTERNA NUMERIC(15,3);
UPDATE NCM SET ALIQUOTAINTERNA = 0 WHERE ALIQUOTAINTERNA IS NULL;