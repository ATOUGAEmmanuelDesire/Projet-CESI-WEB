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

/* Création de la table Users */
CREATE TABLE Users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(255) NOT NULL,
  Surname VARCHAR(220) NOT NULL,
  Email_address VARCHAR(220) NOT NULL,
  Password VARCHAR(255) NOT NULL,
  Statut INT NOT NULL,
  Localisation VARCHAR(255) NOT NULL,
  UNIQUE (Email_address),
  CONSTRAINT chk_Statut CHECK (Statut IN (1, 2, 3))
);

/* Insertions valides */
INSERT INTO Users (Name, Surname, Email_address, Password, Statut, Localisation)
VALUES
('John', 'Doe', 'john.doe@example.com', 'mypassword', 1, 'Paris'),
('Jane', 'Smith', 'jane.smith@example.com', '123456789', 2,'Lyon'),
('Michael', 'Johnson', 'michael.johnson@example.com', 'password123', 1,'Paris'),
('Sarah', 'Williams', 'sarah.williams@example.com', 'pass1234', 3,'Monaco'),
('David', 'Brown', 'david.brown@example.com', 'securepassword', 2,'Marseille');