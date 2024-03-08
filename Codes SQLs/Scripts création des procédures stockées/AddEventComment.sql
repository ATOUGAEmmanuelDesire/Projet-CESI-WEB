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

/*Création d'une procédure permettant d'ajouter un commentaire à un évènement*/

DELIMITER //
CREATE PROCEDURE AddEventComment (
  IN p_UserID INT,
  IN p_EventID INT,
  IN p_EmailAddress VARCHAR(255),
  IN p_Comment VARCHAR(1000)
)
BEGIN
  INSERT INTO Events_Comments (id_Events, id_Users, Email_address_Users, Comments)
  VALUES (p_EventID, p_UserID, p_EmailAddress, p_Comment);
END //
DELIMITER ;