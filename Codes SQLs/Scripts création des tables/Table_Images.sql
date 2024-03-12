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

/* Création de la table Images */
CREATE TABLE Images (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_Users INT,
  Name VARCHAR(255) NOT NULL,
  url_image VARCHAR(30000) NOT NULL,
  Description TEXT NOT NULL,
  Category TEXT NOT NULL
  FOREIGN KEY (id_Users) REFERENCES Users (id)
);

/* Insertions valides */
INSERT INTO Images (Name, url_image, Description, Category, id_Users)
VALUES
('Randonnée en pleine nature', 'https://example.com/image1.jpg', 'Visite du village de Yansoki', 'Nature', 1),
('Visite de la ville de Kribi', 'https://example.com/image2.jpg', 'Voyage dans la cité balnéaire de Kribi', 'Voyage', 3),
('Safari dans le parc de Waza', 'https://example.com/image3.jpg', 'Visite du parc de Waza', 'Animaux', 2),
('Visite du campus UCAC de Yaoundé', 'https://example.com/image4.jpg', 'Campus de Nkolbisson, un joyau architectural', 'Voyage', 2),
('Messe de rentrée', 'https://example.com/image5.jpg', 'Messe de rentrée sur le campus de UCAC-ICAM', 'Spiritualité', 1);