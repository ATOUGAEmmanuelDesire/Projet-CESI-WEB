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

/* Création de la table Images_Comments */
CREATE TABLE Images_Comments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_Images INT NOT NULL,
    id_Users INT NOT NULL,
    Email_address_Users VARCHAR(255) NOT NULL,
    Comments VARCHAR(1000),
    FOREIGN KEY (id_Users) REFERENCES Users (id),
    FOREIGN KEY (id_Images) REFERENCES Images (id)
);

/* Insertions valides */
INSERT INTO Images_Comments (id_Images, id_Users, Email_address_Users, Comments)
VALUES
(1, 1, 'john.doe@example.com', 'Très belle image !'),
(3, 1, 'john.doe@example.com', 'Photo très belle.'),
(2, 3, 'michael.johnson@example.com', 'Superbe capture.'),
(1, 4, 'sarah.williams@example.com', 'Magnifique paysage.'),
(3, 2, 'jane.smith@example.com', 'Waouh !');