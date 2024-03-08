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

/*Création d'une procédure permettant de retirer son commentaire à un évènement*/

DELIMITER //
CREATE PROCEDURE RemoveOwnEventComment (
  IN p_CommentID INT,
  IN p_UserID INT
)
BEGIN
  DELETE FROM Events_Comments
  WHERE id = p_CommentID AND id_Users = p_UserID;
END //
DELIMITER ;