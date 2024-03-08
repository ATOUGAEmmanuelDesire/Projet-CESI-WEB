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

/* Création de la procédure permettant de supprimer une Image*/

DELIMITER //
CREATE PROCEDURE DeleteImage (
  IN p_ImageID INT
)
BEGIN
  DELETE FROM Images
  WHERE id = p_ImageID;
END //
DELIMITER ;