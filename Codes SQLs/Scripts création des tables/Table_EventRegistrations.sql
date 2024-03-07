/*PROJET WEB
Promotion X2027
    GROUPE 05 :
    -ATOUGA II Emmanuel Désiré
    -JODOM CHOUDJA Karell Steve
    -ANDOH Sus-Shinley Mbaayi
    -FOTSO Emmanuel Jordan
    -TSAJIO Fils Logan
    -TIAM DJOFANG Rita Joyce Emmanuela*/

/* Activation de la base de données Events */
USE Events;

/* Création de la table EventRegistrations */
CREATE TABLE EventRegistrations (
  id INT AUTO_INCREMENT PRIMARY KEY,
  event_id INT,
  user_email VARCHAR(255) NOT NULL,
  registration_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (event_id) REFERENCES Events (id_Ideas)
);

/* Insertions valides */

INSERT INTO EventRegistrations (event_id, user_email)
VALUES
(1, 'john.doe@example.com'),
(1, 'michael.johnson@example.com'),
(2, 'jane.smith@example.com'),
(3, 'jane.smith@example.com'),
(4, 'john.doe@example.com');

