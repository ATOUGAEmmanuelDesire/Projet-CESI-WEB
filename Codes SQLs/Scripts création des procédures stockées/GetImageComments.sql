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

/*Création d'une procédure permettant d'afficher les commentaires faites sur une image*/

DELIMITER //
CREATE PROCEDURE GetImageComments (
  IN p_ImageID INT
)
BEGIN
  SELECT id, id_Users, Email_address_Users, Comments
  FROM Images_Comments
  WHERE id_Images = p_ImageID;
END //
DELIMITER ;