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

/*Création d'une procédure permettant d'ajouter des inscriptions à la table Events*/

CREATE PROCEDURE AddInscription(
  IN p_EventID INT,
  IN p_Emails VARCHAR(1000000)
)
BEGIN
  UPDATE Events
  SET Inscriptions = CONCAT(IFNULL(Inscriptions, ''), p_Emails, ',')
  WHERE id_Ideas = p_EventID;
END;