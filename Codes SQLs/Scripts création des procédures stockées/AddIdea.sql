/*PROJET WEB
    GROUPE 05 :
    -ATOUGA II Emmanuel Désiré
    -JODOM CHOUDJA Karell Steve
    -ANDOH Sus-Shinley Mbaayi
    -FOTSO Emmanuel Jordan
    -TSAJIO Fils Logan
    -TIAM DJOFANG Rita Joyce Emmanuela*/

/* Activation de la base de données Events */
USE Events;

/*Création de la procédure permettant d'ajouter une idée dans la boite à idée*/

CREATE PROCEDURE AddIdea(
  IN p_Name VARCHAR(255),
  IN p_Email_address VARCHAR(220),
  IN p_Image VARCHAR(255),
  IN p_Description VARCHAR(255)
)
BEGIN
  INSERT INTO Ideas (Name, Email_address, Image, Description)
  VALUES (p_Name, p_Email_address, p_Image, p_Description);
END;