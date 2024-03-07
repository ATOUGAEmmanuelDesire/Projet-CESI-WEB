/*PROJET WEB
    GROUPE 05 :
    -ATOUGA II Emmanuel Désiré
    -JODOM CHOUDJA Karell Steve
    -ANDOH Sus-Shinley Mbaayi
    -FOTSO Emmanuel Jordan
    -TSAJIO Fils Logan
    -TIAM DJOFANG Rita Joyce Emmanuela*/

/* Activation de la base de données Shop */
USE Shop;

/*Création de la procédure permettant de récupérer les produits présents dans la table Goodies*/

CREATE PROCEDURE GetGoodies()
BEGIN
  SELECT * FROM Goodies;
END;