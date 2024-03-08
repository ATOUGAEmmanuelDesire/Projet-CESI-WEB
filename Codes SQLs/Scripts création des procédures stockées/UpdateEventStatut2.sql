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

/*Création d'une procédure permettant de mettre à jour le statut d'un évènement*/

DELIMITER //
CREATE PROCEDURE UpdateEventStatut2 (
  IN p_EventID INT
)
BEGIN
  UPDATE Events
  SET Statut = 2
  WHERE id = p_EventID AND Statut = 1;
END //
DELIMITER ;