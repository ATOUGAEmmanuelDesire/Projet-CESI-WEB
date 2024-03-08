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

/*Création d'une procédure permettant d'ajouter un like à un évènement*/

DELIMITER //
CREATE PROCEDURE AddEventLike (
  IN p_UserID INT,
  IN p_EventID INT
)
BEGIN
  INSERT INTO Events_Likes (id_Users, id_Events)
  VALUES (p_UserID, p_EventID);
END //
DELIMITER ;