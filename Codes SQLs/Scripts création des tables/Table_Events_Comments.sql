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

/* Création de la table Comments */
CREATE TABLE Events_Comments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_Events INT NOT NULL,
    id_Users INT NOT NULL,
    Email_address_Users VARCHAR(255) NOT NULL,
    Comments VARCHAR(1000),
    FOREIGN KEY (id_Users) REFERENCES Users (id),
    FOREIGN KEY (id_Events) REFERENCES Events (id)
);

/* Insertions valides */
INSERT INTO Events_Comments (id_Events, id_Users, Email_address_Users, Comments)
VALUES
(1, 2, 'jane.smith@example.com', 'Très belle image !'),
(3, 1, 'john.doe@example.com', 'Enfin un peu de détente'),
(2, 3, 'michael.johnson@example.com', 'Génial'),
(1, 4, 'sarah.williams@example.com', 'Magnifique paysage.'),
(3, 2, 'jane.smith@example.com', 'Waouh !');