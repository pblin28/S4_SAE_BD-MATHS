-- Pour la table PARCOURS :
INSERT INTO PARCOURS (id_Parcours, nom_Parcours) VALUES (1, 'Parcours de montagne');
INSERT INTO PARCOURS (id_Parcours, nom_Parcours) VALUES (2, 'Parcours côtier');
INSERT INTO PARCOURS (id_Parcours, nom_Parcours) VALUES (3, 'Parcours en forêt');
INSERT INTO PARCOURS (id_Parcours, nom_Parcours) VALUES (4, 'Parcours urbain');

-- Pour la table CATEGORIE :
INSERT INTO CATEGORIE (id_Categorie, nom_Cat, desc_Cat) VALUES (1, 'Randonnée pédestre', 'Parcours à pied en montagne');
INSERT INTO CATEGORIE (id_Categorie, nom_Cat, desc_Cat) VALUES (2, 'Vélo de route', 'Parcours à vélo sur route côtière');
INSERT INTO CATEGORIE (id_Categorie, nom_Cat, desc_Cat) VALUES (3, 'Course à pied', 'Parcours à pied à travers la forêt');
INSERT INTO CATEGORIE (id_Categorie, nom_Cat, desc_Cat) VALUES (4, 'Marche urbaine', 'Parcours à pied en ville');

-- Pour la table ETAPE :
INSERT INTO ETAPE (code_Etape, nom_Etape, num_Etape, confort, latitude, longitude, villeEtape) VALUES (1, 'Sommet du Pic', '1', 1, '45.678', '12.345', 'Village de Montagne');
INSERT INTO ETAPE (code_Etape, nom_Etape, num_Etape, confort, latitude, longitude, villeEtape) VALUES (2, 'Plage de Sable Blanc', '2', 2, '46.789', '13.456', 'Village côtier');
INSERT INTO ETAPE (code_Etape, nom_Etape, num_Etape, confort, latitude, longitude, villeEtape) VALUES (3, 'Sentier ombragé', '1', 1, '47.123', '11.789', 'Orléans');
INSERT INTO ETAPE (code_Etape, nom_Etape, num_Etape, confort, latitude, longitude, villeEtape) VALUES (4, 'Place du Martroi', '1', 1, '47.896', '1.905', 'Orléans');
INSERT INTO ETAPE (code_Etape, nom_Etape, num_Etape, confort, latitude, longitude, villeEtape) VALUES (5, 'Cathédrale Sainte-Croix', '2', 2, '47.902', '1.908', 'Orléans');
INSERT INTO ETAPE (code_Etape, nom_Etape, num_Etape, confort, latitude, longitude, villeEtape) VALUES (6, 'Quai de la Loire', '3', 1, '47.896', '1.883', 'Orléans');

-- Pour la table TRONCONS :
INSERT INTO TRONCONS (id_Tr, nom_Tr, distance, Type_Sol, depart, arrivee) VALUES (1, 'Sentier de montagne', '5', 'Sentier de terre', 1, 2);
INSERT INTO TRONCONS (id_Tr, nom_Tr, distance, Type_Sol, depart, arrivee) VALUES (2, 'Route côtière', '10', 'Asphalte', 2, 1);
INSERT INTO TRONCONS (id_Tr, nom_Tr, distance, Type_Sol, depart, arrivee) VALUES (3, 'Chemin forestier', '8', 'Chemin de terre', 3, 1);
INSERT INTO TRONCONS (id_Tr, nom_Tr, distance, Type_Sol, depart, arrivee) VALUES (4, 'Rue piétonne', '2', 'Pavés', 4, 5);
INSERT INTO TRONCONS (id_Tr, nom_Tr, distance, Type_Sol, depart, arrivee) VALUES (5, 'Avenue principale', '3', 'Asphalte', 5, 6);


-- Pour la table CONTENIR :
INSERT INTO CONTENIR (id_Parcours, id_Tr) VALUES (1, 1);
INSERT INTO CONTENIR (id_Parcours, id_Tr) VALUES (2, 2);
INSERT INTO CONTENIR (id_Parcours, id_Tr) VALUES (3, 3);
INSERT INTO CONTENIR (id_Parcours, id_Tr) VALUES (4, 4);
INSERT INTO CONTENIR (id_Parcours, id_Tr) VALUES (4, 5);