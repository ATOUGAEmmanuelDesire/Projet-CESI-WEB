/*PROJET WEB
    GROUPE 05 :
    -ATOUGA II Emmanuel Désiré
    -JODOM CHOUDJA Karell Steve
    -ANDOH Sus-Shinley Mbaayi
    -FOTSO Emmanuel Jordan
    -TSAJIO Fils Logan
    -TIAM DJOFANG Rita Joyce Emmanuela*/

/* Activation de la base de données Events */
USE Events;

/*Création de la procédure permetant d'afficher les évenements présent dans la table Events*/

CREATE PROCEDURE GetEvents()
BEGIN
  SELECT * FROM Events;
END;