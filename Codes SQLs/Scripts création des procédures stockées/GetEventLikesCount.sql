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

/*Création d'une procédure permettant de compter le nombre de like qu'un évènement à reçu*/

DELIMITER //
CREATE PROCEDURE GetEventLikesCount (
  IN p_EventID INT,
  OUT p_LikesCount INT
)
BEGIN
  SELECT COUNT(*) INTO p_LikesCount
  FROM Events_Likes
  WHERE id_Events = p_EventID;
END //
DELIMITER ;