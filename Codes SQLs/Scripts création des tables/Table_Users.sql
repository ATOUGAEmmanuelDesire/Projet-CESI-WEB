/*PROJET WEB
    GROUPE 05 :
    -ATOUGA II Emmanuel Désiré
    -JODOM CHOUDJA Karell Steve
    -ANDOH Sus-Shinley Mbaayi
    -FOTSO Emmanuel Jordan
    -TSAJIO Fils Logan
    -TIAM DJOFANG Rita Joyce Emmanuela*/

/* Activation de la base de données Users */
USE Users;

/* Création de la table Users */
CREATE TABLE Users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(255) NOT NULL,
  Surname VARCHAR(220) NOT NULL,
  Email_address VARCHAR(220) NOT NULL,
  Password VARCHAR(255) NOT NULL,
  Statut INT NOT NULL,
  CONSTRAINT chk_Statut CHECK (Statut IN (1, 2, 3))
);

/* Insertions valides */

INSERT INTO Users (Name, Surname, Email_address, Password, Statut)
VALUES
('John', 'Doe', 'john.doe@example.com', 'mypassword', 1),
('Jane', 'Smith', 'jane.smith@example.com', '123456789', 2),
('Michael', 'Johnson', 'michael.johnson@example.com', 'password123', 1),
('Sarah', 'Williams', 'sarah.williams@example.com', 'pass1234', 3),
('David', 'Brown', 'david.brown@example.com', 'securepassword', 2);