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

/*Création d'une procédure permettant de retirer son like d'un évènement*/

DELIMITER //
CREATE PROCEDURE RemoveOwnEventLike (
  IN p_UserID INT,
  IN p_EventID INT
)
BEGIN
  DELETE FROM Events_Likes
  WHERE id_Users = p_UserID AND id_Events = p_EventID;
END //
DELIMITER ;