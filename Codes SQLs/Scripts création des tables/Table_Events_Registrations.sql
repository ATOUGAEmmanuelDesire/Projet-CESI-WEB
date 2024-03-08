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

/* Création de la table EventRegistrations */
CREATE TABLE Events_Registrations (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_Events INT,
  id_Users INT,
  Email_address_Users VARCHAR(255) NOT NULL,
  registration_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (id_Events) REFERENCES Events (id),
  FOREIGN KEY (id_Users) REFERENCES Users (id),
  UNIQUE (id_Users, id_Events)
);

/* Insertions valides */

INSERT INTO Events_Registrations (id_Events, id_Users, Email_address_Users)
VALUES
(1, 1, 'john.doe@example.com'),
(1, 3, 'michael.johnson@example.com'),
(2, 2, 'jane.smith@example.com'),
(3, 2, 'jane.smith@example.com'),
(4, 1, 'john.doe@example.com');