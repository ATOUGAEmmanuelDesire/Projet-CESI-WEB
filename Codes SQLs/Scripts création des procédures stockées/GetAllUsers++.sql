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

/* Création de la procédure permettant de retourner la liste de tous les utilisateurs */
DELIMITER //
CREATE PROCEDURE GetAllUsers ()
BEGIN
  SELECT * FROM Users;
END //
DELIMITER ;

/* Création de la procédure permettant de retourner la liste de tous les utilisateurs simples (étudiants) */
DELIMITER //
CREATE PROCEDURE GetAllSimpleStudents ()
BEGIN
  SELECT * FROM Users WHERE Statut = 1;
END //
DELIMITER ;

/* Création de la procédure permettant de retourner la liste de tous les utilisateurs membres du BDE */
DELIMITER //
CREATE PROCEDURE GetAllBDEMembers ()
BEGIN
  SELECT * FROM Users WHERE Statut = 2;
END //
DELIMITER ;

/* Création de la procédure permettant de retourner la liste de tous les étudiants */
DELIMITER //
CREATE PROCEDURE GetAllStudents ()
BEGIN
  SELECT * FROM Users WHERE Statut = 1 OR Statut = 2;
END //
DELIMITER ;

/* Création de la procédure permettant de retourner la liste de tous les utilisateurs salariés de Cesi */
DELIMITER //
CREATE PROCEDURE GetAllCesiEmployees()
BEGIN
  SELECT * FROM Users WHERE Statut = 3;
END //
DELIMITER ;