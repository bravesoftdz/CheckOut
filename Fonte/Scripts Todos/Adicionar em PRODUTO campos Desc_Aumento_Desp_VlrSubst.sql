ALTER TABLE PRODUTO ADD PRODN2PERCDESP    NUMERIC(15,2) DEFAULT 0;
ALTER TABLE PRODUTO ADD PRODN2PERCSUBST   NUMERIC(15,2) DEFAULT 0;

UPDATE PRODUTO SET  PRODN2PERCDESP   = 0  WHERE PRODN2PERCDESP   IS NULL;
UPDATE PRODUTO SET  PRODN2PERCSUBST  = 0  WHERE PRODN2PERCSUBST  IS NULL;
UPDATE PRODUTO SET  PRODN2PERCFRETE  = 0  WHERE PRODN2PERCFRETE  IS NULL;