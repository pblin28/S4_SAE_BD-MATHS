CREATE TABLE CATEGORIE (
  id_Categorie    NUMBER NOT NULL PRIMARY KEY,
  nom_Cat         VARCHAR(42),
  desc_Cat VARCHAR(42),
);

CREATE TABLE CONTENIR (
  id_Parcours NUMBER,
  id_Tr       NUMBER,
  FOREIGN KEY (id_Parcours) REFERENCES PARCOURS (id_Parcours),
  FOREIGN KEY (id_Tr) REFERENCES TRONCONS (id_Tr)
);

CREATE TABLE ETAPE (
  code_Etape NUMBER NOT NULL PRIMARY KEY,
  nom_Etape VARCHAR(42),
  num_Etape  VARCHAR(42),
  confort NUMBER,
  latitude   VARCHAR(42),
  longitude  VARCHAR(42),
  villeEtape VARCHAR(42),
  FOREIGN KEY (confort) REFERENCES CATEGORIE (id_Categorie)
);

CREATE TABLE PARCOURS (
  id_Parcours  NUMBER PRIMARY KEY,
  nom_Parcours VARCHAR(42)
);

CREATE TABLE TRONCONS (
  id_Tr    NUMBER NOT NULL PRIMARY KEY,
  nom_Tr   VARCHAR(42),
  distance VARCHAR(42),
  Type_Sol VARCHAR(42),
  depart NUMBER,
  arrivee NUMBER,
  FOREIGN KEY (depart) REFERENCES ETAPE (code_Etape),
  FOREIGN KEY (arrivee) REFERENCES ETAPE (code_Etape)
);

