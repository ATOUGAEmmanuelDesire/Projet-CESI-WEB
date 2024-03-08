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

/*Création d'une procédure permettant de mettre à jour le statut d'un Utilisateur*/

DELIMITER //
CREATE PROCEDURE UpdateUserStatut1 (
  IN p_UserID INT
)
BEGIN
  UPDATE Users
  SET Statut = 3
  WHERE id = p_UserID AND Statut = 2;
END //
DELIMITER ;