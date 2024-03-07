/*PROJET WEB
    GROUPE 05 :
    -ATOUGA II Emmanuel Désiré
    -JODOM CHOUDJA Karell Steve
    -ANDOH Sus-Shinley Mbaayi
    -FOTSO Emmanuel Jordan
    -TSAJIO Fils Logan
    -TIAM DJOFANG Rita Joyce Emmanuela*/

/* Activation de la base de données Shop */
USE Shop;

/* Création de la table Commands */
CREATE TABLE Commands (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Email_address VARCHAR(255) NOT NULL,
  Goodies TEXT NOT NULL,
  id_Goodies INT NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
  delivered_at DATETIME DEFAULT CURRENT_TIMESTAMP NULL,
  FOREIGN KEY (id_Goodies) REFERENCES Goodies (id)
);

/* Insertions valides */

INSERT INTO Commands (Email_address, Goodies, id_Goodies)
VALUES
('john.doe@example.com', 'T-shirt X2027', 1),
('jane.smith@example.com', 'Mug X2027', 2),
('michael.johnson@example.com', 'Sac à dos X2027', 3),
('sarah.williams@example.com', 'Stylo X2027', 4),
('david.brown@example.com', 'Carnet X2027', 5);