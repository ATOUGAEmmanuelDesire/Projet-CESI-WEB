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

/*Création d'une procédure permettant d'afficher la liste des inscriptions*/

DELIMITER //
CREATE PROCEDURE GetAllEventRegistrations ()
BEGIN
  SELECT ER.id, E.Name, U.Name, ER.Email_address_Users
  FROM Events_Registrations ER
  INNER JOIN Events E ON ER.id_Events = E.id
  INNER JOIN Users U ON ER.id_Users = U.id;
END //
DELIMITER ;