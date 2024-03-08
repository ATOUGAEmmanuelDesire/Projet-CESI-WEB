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

/* Création de la procédure permettant de Liker une Image */

DELIMITER //
CREATE PROCEDURE AddLikeImage (
  IN p_UserID INT,
  IN p_ImageID INT
)
BEGIN
  INSERT INTO Images_Likes (id_Users, id_Images)
  VALUES (p_UserID, p_ImageID);
END //
DELIMITER ;