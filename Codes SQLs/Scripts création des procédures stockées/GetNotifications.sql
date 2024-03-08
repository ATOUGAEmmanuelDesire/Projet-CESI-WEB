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

/*Création de la procédure stockée est correctement définie. Elle affiche les notifications d'un utilisateur spécifique*/

DELIMITER //

CREATE PROCEDURE AfficherNotifications(
    IN userId INT
    )
BEGIN
    SELECT notification_text 
    FROM Notifications 
    WHERE id_Users = userId AND is_read = TRUE;
END //

DELIMITER ;