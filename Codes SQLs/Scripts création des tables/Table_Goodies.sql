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

/* Création de la table Goodies */
CREATE TABLE Goodies (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(255) NOT NULL,
  Description TEXT NOT NULL,
  price INT NOT NULL,
  Category TEXT NOT NULL
);

/* Insertions valides */

INSERT INTO Goodies (Name, Description, price, Category)
VALUES
('T-shirt X2027', 'T-shirt promotionnel de la promotion X2027', 15, 'Vêtements'),
('Mug X2027', 'Mug avec le logo de la promotion X2027', 10, 'Accessoires'),
('Sac à dos X2027', 'Sac à dos pratique avec le logo de la promotion X2027', 25, 'Accessoires'),
('Stylo X2027', 'Stylo avec le logo de la promotion X2027', 5, 'Fournitures'),
('Carnet X2027', 'Carnet avec le logo de la promotion X2027', 8, 'Fournitures');

