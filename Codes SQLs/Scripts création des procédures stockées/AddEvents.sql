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

/*Création de la procédure permettant d'ajouter des évènements à la table évènements*/

CREATE PROCEDURE AddEvent(
  IN p_id_Ideas INT,
  IN p_Name VARCHAR(255),
  IN p_Inscriptions VARCHAR(1000000),
  IN p_Image VARCHAR(255),
  IN p_Description VARCHAR(255),
  IN p_begin_the DATETIME,
  IN p_time_events VARCHAR(255)
)
BEGIN
  INSERT INTO Events (id_Ideas, Name, Inscriptions, Image, Description, begin_the, time_events)
  VALUES (p_id_Ideas, p_Name, p_Inscriptions, p_Image, p_Description, p_begin_the, p_time_events);
END;