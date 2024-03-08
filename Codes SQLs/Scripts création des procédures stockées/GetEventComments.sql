/*PROJET WEB
Promotion X2027
    GROUPE 05 :
    -ATOUGA II Emmanuel Désiré
    -JODOM CHOUDJA Karell Steve
    -ANDOH Sus-Shinley Mbaayi
    -FOTSO Emmanuel Jordan
    -TSAJIO Fils Logan
    -TIAM DJOFANG Rita Joyce Emmanuela*/

/* Activation de la base de données Cesi_BDE */
USE Cesi_BDE;

/*Création d'une procédure permettant de afficher les commentaire à un évènement*/

DELIMITER //
CREATE PROCEDURE GetEventComments (
  IN p_EventID INT
)
BEGIN
  SELECT id, id_Events, id_Users, Email_address_Users, Comments
  FROM Events_Comments
  WHERE id_Events = p_EventID;
END //
DELIMITER ;