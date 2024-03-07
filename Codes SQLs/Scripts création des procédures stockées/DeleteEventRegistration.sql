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


/*Création de la procédure permettant de supprimer une iscription dans la table EventRegistrations*/

CREATE PROCEDURE DeleteEventRegistration (
  IN p_event_id INT,
  IN p_user_email VARCHAR(255)
)
BEGIN
  DELETE FROM EventRegistrations
  WHERE event_id = p_event_id AND user_email = p_user_email;
END //
