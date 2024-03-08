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

/*Création d'une procédure permettant d'ajouter un commentaire sous une Image*/
DELIMITER //
CREATE PROCEDURE AddImageComment (
  IN p_ImageID INT,
  IN p_UserID INT,
  IN p_Email VARCHAR(255),
  IN p_Comment VARCHAR(1000)
)
BEGIN
  INSERT INTO Images_Comments (id_Images, id_Users, Email_address_Users, Comments)
  VALUES (p_ImageID, p_UserID, p_Email, p_Comment);
END //
DELIMITER ;