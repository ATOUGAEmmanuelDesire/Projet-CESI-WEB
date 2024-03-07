/*PROJET WEB
    GROUPE 05 :
    -ATOUGA II Emmanuel Désiré
    -JODOM CHOUDJA Karell Steve
    -ANDOH Sus-Shinley Mbaayi
    -FOTSO Emmanuel Jordan
    -TSAJIO Fils Logan
    -TIAM DJOFANG Rita Joyce Emmanuela*/

/* Activation de la base de données Users */
USE Users;

/* Création de la procédure permettant d'ajouter un utilisateur*/
CREATE PROCEDURE AddUser(
  IN p_Name VARCHAR(255),
  IN p_Surname VARCHAR(220),
  IN p_Email_address VARCHAR(220),
  IN p_Password VARCHAR(255),
  IN p_Statut INT
)
BEGIN
  INSERT INTO Users (Name, Surname, Email_address, Password, Statut)
  VALUES (p_Name, p_Surname, p_Email_address, p_Password, p_Statut);
END;