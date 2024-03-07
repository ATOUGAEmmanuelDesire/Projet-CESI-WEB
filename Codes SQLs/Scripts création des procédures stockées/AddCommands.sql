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

/*Création permettant d'ajouter des commandes à la table Command*/

CREATE PROCEDURE AddCommand(
  IN p_Email_address VARCHAR(255),
  IN p_Goodies TEXT,
  IN p_id_Goodies INT
)
BEGIN
  INSERT INTO Commands (Email_address, Goodies, id_Goodies)
  VALUES (p_Email_address, p_Goodies, p_id_Goodies);
END;