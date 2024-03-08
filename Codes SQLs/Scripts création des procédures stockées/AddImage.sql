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

/* Création de la procédure permettant d'ajouter une Image*/

DELIMITER //
CREATE PROCEDURE AddImage (
  IN p_Name VARCHAR(255),
  IN p_url_image VARCHAR(30000),
  IN p_Description TEXT,
  IN p_Category TEXT
)
BEGIN
  INSERT INTO Images (Name, url_image, Description, Category)
  VALUES (p_Name, p_url_image, p_Description, p_Category);
END //
DELIMITER ;