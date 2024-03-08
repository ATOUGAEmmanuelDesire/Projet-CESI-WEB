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

/* Création de la table Likes */
CREATE TABLE Events_Likes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_Users INT NOT NULL,
    id_Events INT NOT NULL,
    FOREIGN KEY (id_Users) REFERENCES Users (id),
    FOREIGN KEY (id_Events) REFERENCES Events (id),
    UNIQUE (id_Users, id_Events)
);

/* Insertions valides */
INSERT INTO Events_Likes (id_Users, id_Events)
VALUES
(1, 1), -- Utilisateur 1 aime l'Évènement 1
(2, 3), -- Utilisateur 2 aime l'Évènement 3
(3, 2), -- Utilisateur 3 aime l'Évènement 2
(3, 3), -- Utilisateur 3 aime l'Évènement 3
(2, 2); -- Utilisateur 2 aime l'Évènement 2