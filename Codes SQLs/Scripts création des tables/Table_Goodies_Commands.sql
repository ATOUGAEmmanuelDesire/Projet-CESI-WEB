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

/* Création de la table Commands */
CREATE TABLE Goodies_Commands (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Email_address VARCHAR(255) NOT NULL,
  Goodies TEXT NOT NULL,
  id_Goodies INT NOT NULL,
  id_Users INT NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
  delivered_at DATETIME DEFAULT CURRENT_TIMESTAMP NULL,
  FOREIGN KEY (id_Goodies) REFERENCES Goodies (id),
  FOREIGN KEY (id_Users) REFERENCES Users (id)
);

/* Insertions valides */

INSERT INTO Goodies_Commands (Email_address, id_Users, Goodies, id_Goodies)
VALUES
('john.doe@example.com', 1, 'T-shirt X2027', 1),
('jane.smith@example.com', 2, 'Mug X2027', 2),
('michael.johnson@example.com', 3, 'Sac à dos X2027', 3),
('sarah.williams@example.com', 4, 'Stylo X2027', 4),
('david.brown@example.com', 5, 'Carnet X2027', 5);