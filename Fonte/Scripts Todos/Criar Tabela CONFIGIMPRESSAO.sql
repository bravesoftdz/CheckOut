CREATE TABLE CONFIGIMPRESSAO (
  CFIMIID INTEGER NOT NULL,
  CFIMICOD INTEGER NOT NULL,
  CFIMA30DESCR CHAR(30),
  CFIMA30TABLE CHAR(30),
  CFIMITOP INTEGER,
  CFIMILEFT INTEGER,
  CFIMA30FIELD CHAR(30),
  CFIMA60FIELDLABEL CHAR(60),
  CFIMIDIVISAO INTEGER,
  CFIMIIMPCOL INTEGER,
  CFIMIIMPLIN INTEGER,
  CFIMA15TIPO CHAR(15),
  PRIMARY KEY (CFIMIID,CFIMICOD )
)