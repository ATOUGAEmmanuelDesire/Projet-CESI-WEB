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

/* Création de la table Events */
CREATE TABLE Events (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_Users INT,
  Name VARCHAR(255) NOT NULL,
  Image VARCHAR(255) NOT NULL,
  Description VARCHAR(255) NOT NULL,
  begin_the DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
  time_events VARCHAR(225) NOT NULL,
  Statut INT NOT NULL,
  CONSTRAINT chk_Statut_Events CHECK (Statut IN (0, 1, 2)),
  FOREIGN KEY (id_Users) REFERENCES Users (id)
);

/* Insertions valides */

INSERT INTO Events (id_Users, Name, Image, Description, begin_the, time_events, Statut)
VALUES
(2, 'Concours de chant', 'image1.jpg', 'Concours sur les chants de divers registres gospel, pop, R&B, etc.', '2024-03-10 18:00:00', '2 heures', 0),
(4, 'Soirée jeux de société', 'image2.jpg', 'On pourrait jouer au Ludo, aux échecs, au Scrabble, etc.', '2024-03-15 19:30:00', '3 heures', 2),
(5, 'Club de développement de logiciels', 'image3.jpg', 'Donner de la valeur aux cours de programmation reçus par les étudiants', '2024-03-20 16:00:00', '1 heure', 2),
(1, 'Visite guidée dans le village de Yansoki', 'image4.jpg', 'Cela nous permettra de mieux nous intégrer dans le village', '2024-03-25 14:00:00', '2 heures', 1),
(1, 'Soirée pyjama géante', 'image5.jpg', 'Cela pourra renforcer les liens entre les étudiants', '2024-03-30 20:00:00', '4 heures', 0);