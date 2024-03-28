-- Donner les noms des ´etapes que nous pouvons atteindre directement en suivant les tron¸cons qui partent d’Orl´eans.

SELECT DISTINCT t.nom_Tr
FROM TRONCONS t
JOIN ETAPE e ON t.depart = e.code_Etape
WHERE e.villeEtape = 'Orléans';


-- Veuillez fournir la liste des ´etapes accessibles depuis Orl´eans avec une seule ´etape interm´ediaire

SELECT DISTINCT e3.nom_Etape
FROM ETAPE e1
JOIN TRONCONS t1 ON e1.code_Etape = t1.arrivee
JOIN TRONCONS t2 ON t1.depart = t2.arrivee
JOIN ETAPE e2 ON t2.arrivee = e2.code_Etape
JOIN TRONCONS t3 ON e2.code_Etape = t3.depart
JOIN ETAPE e3 ON t3.arrivee = e3.code_Etape
WHERE e1.villeEtape = 'Orléans';

-- Veuillez fournir la liste des ´etapes accessibles depuis Orl´eans, avec un nombre quelconque d’´etapes interm´ediaires

SELECT DISTINCT e.nom_Etape
FROM ETAPE e
WHERE e.code_Etape IN (
    SELECT arrivee
    FROM TRONCONS
    WHERE depart IN (
        SELECT code_Etape
        FROM ETAPE
        WHERE villeEtape = 'Orléans'
    )
    UNION ALL
    SELECT arrivee
    FROM TRONCONS
    WHERE depart IN (
        SELECT arrivee
        FROM TRONCONS
        WHERE depart IN (
            SELECT code_Etape
            FROM ETAPE
            WHERE villeEtape = 'Orléans'
        )
    )
);
