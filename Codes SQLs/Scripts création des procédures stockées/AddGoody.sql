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

/*Création d'une procédure permettant d'ajouter un Goody*/

DELIMITER //
CREATE PROCEDURE AddGoody (
  IN p_Name VARCHAR(255),
  IN p_Description TEXT,
  IN p_Price INT,
  IN p_Category TEXT
)
BEGIN
  INSERT INTO Goodies (Name, Description, Price, Category)
  VALUES (p_Name, p_Description, p_Price, p_Category);
END //
DELIMITER ;