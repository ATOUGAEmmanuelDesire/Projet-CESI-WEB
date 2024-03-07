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

/* Création de la table Ideas */
CREATE TABLE Ideas (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(255) NOT NULL,
  Email_address VARCHAR(220) NOT NULL,
  Image VARCHAR(255) NOT NULL,
  Description VARCHAR(255) NOT NULL,
  proposed_at DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
);

/* Insertions valides */

INSERT INTO Ideas (Name, Email_address, Image, Description)
VALUES
('Concours de chant', 'john.doe@example.com', 'image1.jpg', 'Concours sur les chants de divers registre gospel; pop; R&B etc...'),
('Soirée jeux de société', 'jane.smith@example.com', 'image2.jpg', 'On pourrait jouer au Ludo ; aux echecs ; au Scrabble ; etc...'),
('Créer un club de developpemnt de logiciels', 'michael.johnson@example.com', 'image3.jpg', 'Donner de la valeurs aux cours de programmation reçu pas les étudiants'),
('Organiser une visite guidée dans le village de Yansoki', 'sarah.williams@example.com', 'image4.jpg', 'Cela nous permettra de mieux nous intégrer dans le village'),
('Organisée une soirée pijamas géante', 'david.brown@example.com', 'image5.jpg', 'Cela pourra renforcer les lients entre les étudiants');


