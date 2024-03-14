CREATE TABLE CATEGORIE (
  PRIMARY KEY (id_Categorie),
  id_Categorie    VARCHAR(42) NOT NULL,
  nom_Cat         VARCHAR(42),
  description_Cat VARCHAR(42),
  code_Etape      VARCHAR(42) NULL
);

CREATE TABLE CONTENIR (
  PRIMARY KEY (id_Parcours, id_Tr),
  id_Parcours VARCHAR(42) NOT NULL,
  id_Tr       VARCHAR(42) NOT NULL
);

CREATE TABLE ETAPE (
  PRIMARY KEY (code_Etape),
  code_Etape VARCHAR(42) NOT NULL,
  num_Etape  VARCHAR(42),
  latitude   VARCHAR(42),
  longitude  VARCHAR(42),
  id_Tr_1    VARCHAR(42) NOT NULL,
  id_Tr_2    VARCHAR(42) NOT NULL,
  UNIQUE (id_Tr_1),
  UNIQUE (id_Tr_2)
);

CREATE TABLE PARCOURS (
  PRIMARY KEY (id_Parcours),
  id_Parcours  VARCHAR(42) NOT NULL,
  nom_Parcours VARCHAR(42)
);

CREATE TABLE TRONCONS (
  PRIMARY KEY (id_Tr),
  id_Tr    VARCHAR(42) NOT NULL,
  nom_Tr   VARCHAR(42),
  distance VARCHAR(42),
  Type_Sol VARCHAR(42)
);

ALTER TABLE CATEGORIE ADD FOREIGN KEY (code_Etape) REFERENCES ETAPE (code_Etape);

ALTER TABLE CONTENIR ADD FOREIGN KEY (id_Tr) REFERENCES TRONCONS (id_Tr);
ALTER TABLE CONTENIR ADD FOREIGN KEY (id_Parcours) REFERENCES PARCOURS (id_Parcours);

ALTER TABLE ETAPE ADD FOREIGN KEY (id_Tr_2) REFERENCES TRONCONS (id_Tr);
ALTER TABLE ETAPE ADD FOREIGN KEY (id_Tr_1) REFERENCES TRONCONS (id_Tr);

