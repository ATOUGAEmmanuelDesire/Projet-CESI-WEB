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

/*Création d'une procédure permettant retirer son inscription à un évènement*/

DELIMITER //
CREATE PROCEDURE RemoveOwnEventRegistration (
  IN p_RegistrationID INT,
  IN p_UserID INT
)
BEGIN
  DELETE FROM Events_Registrations WHERE id = p_RegistrationID AND id_Users = p_UserID;
END //
DELIMITER ;