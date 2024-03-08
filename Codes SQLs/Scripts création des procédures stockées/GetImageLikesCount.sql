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

/*Création d'une procédure permettant de compter le nombre de like qu'une photo à reçu*/

DELIMITER //
CREATE PROCEDURE GetImageLikesCount (
  IN p_ImageID INT,
  OUT p_LikesCount INT
)
BEGIN
  SELECT COUNT(*) INTO p_LikesCount
  FROM Images_Likes_Likes
  WHERE id_Images = p_EventID;
END //
DELIMITER ;