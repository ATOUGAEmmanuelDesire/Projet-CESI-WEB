/*PROJET WEB
    GROUPE 05 :
    -ATOUGA II Emmanuel Désiré
    -JODOM CHOUDJA Karell Steve
    -ANDOH Sus-Shinley Mbaayi
    -FOTSO Emmanuel Jordan
    -TSAJIO Fils Logan
    -TIAM DJOFANG Rita Joyce Emmanuela*/

/* Activation de la base de données Cesi_BDE */
USE Cesi_BDE;

/* Création de la procédure permettant de supprimer un utilisateur*/
DELIMITER //
CREATE PROCEDURE DeleteUser (
  IN p_UserID INT
)
BEGIN
  DELETE FROM Users
  WHERE id = p_UserID;
END //
DELIMITER ;