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


/*Création de la procédure permettant de trouver les compter évènements de l'utilisateur qui ont été validés*/

DELIMITER //

CREATE PROCEDURE GetCountYourEvents(
    IN p_UserID INT,
    OUT count INT
)
BEGIN
    SELECT COUNT(*) INTO count
    FROM Events
    WHERE statut = 1 AND id_Users = p_UserID;
END //

DELIMITER ;