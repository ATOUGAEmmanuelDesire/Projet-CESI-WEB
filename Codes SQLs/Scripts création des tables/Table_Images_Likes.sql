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

/* Création de la table Images_Likes */
CREATE TABLE Images_Likes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_Users INT NOT NULL,
    id_Images INT NOT NULL,
    FOREIGN KEY (id_Users) REFERENCES Users (id),
    FOREIGN KEY (id_Images) REFERENCES Images (id),
    UNIQUE (id_Users, id_Images)
);

/* Insertions valides */
INSERT INTO Images_Likes (id_Users, id_Images)
VALUES
(1, 1), -- Utilisateur 1 aime l'image 1
(2, 3), -- Utilisateur 2 aime l'image 3
(3, 2), -- Utilisateur 3 aime l'image 2
(3, 3), -- Utilisateur 3 aime l'image 3
(2, 2); -- Utilisateur 2 aime l'image 2