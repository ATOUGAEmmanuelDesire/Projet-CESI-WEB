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

/* Création de la procédure permettant de Disliker une Image */

DELIMITER //
CREATE PROCEDURE RemoveOwnImageLike (
  IN p_UserID INT,
  IN p_ImageID INT
)
BEGIN
  DELETE FROM Images_Likes
  WHERE id_Users = p_UserID AND id_Images = p_ImageID;
END //
DELIMITER ;
