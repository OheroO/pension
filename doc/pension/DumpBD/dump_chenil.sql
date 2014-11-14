create table pension (id_texte serial not null primary key, texte_accueil text);
INSERT INTO pension (id_texte, texte_accueil) VALUES (1, '* Activités conçues par des comportementalistes de renommée mondiale<br />
* Repas sur mesure, maisonnettes individuelles et fauteuils privés<br />
* Cadeau de bienvenue<br />');

create table confort (id_confort serial not null primary key,nom text);
INSERT INTO confort (id_confort, nom) VALUES (1, 'Les maisonnettes');
INSERT INTO confort (id_confort, nom) VALUES (2, 'Les fauteuils');
INSERT INTO confort (id_confort, nom) VALUES (3, 'Les activités');

CREATE TABLE chenil (id_chenil serial NOT NULL primary key,id_confort integer references confort (id_confort),denomination text,hauteur real,type_animal text,image text);
INSERT INTO chenil (id_chenil, id_confort, denomination, hauteur, type_animal, image) VALUES (1, 2, 'Altesse', -1, '', 'divan1.jpg');
INSERT INTO chenil (id_chenil, id_confort, denomination, hauteur, type_animal, image) VALUES (2, 2, 'Majesté', -1, '', 'divan2.jpg');
INSERT INTO chenil (id_chenil, id_confort, denomination, hauteur, type_animal, image) VALUES (3, 2, 'Casual', -1, '', 'fauteuil1.jpg');
INSERT INTO chenil (id_chenil, id_confort, denomination, hauteur, type_animal, image) VALUES (4, 2, 'Cosy', -1, '', 'fauteuil2.jpg');
INSERT INTO chenil (id_chenil, id_confort, denomination, hauteur, type_animal, image) VALUES (5, 1, 'Le ranch', 0.800000012, '', 'maison1.jpg');
INSERT INTO chenil (id_chenil, id_confort, denomination, hauteur, type_animal, image) VALUES (6, 1, 'Ville', 1.20000005, '', 'maison2.jpg');
INSERT INTO chenil (id_chenil, id_confort, denomination, hauteur, type_animal, image) VALUES (7, 1, 'Montagne', 0.850000024, '', 'maison3.jpg');
INSERT INTO chenil (id_chenil, id_confort, denomination, hauteur, type_animal, image) VALUES (8, 1, 'Campagne', 0.75, '', 'maison4.jpg');
INSERT INTO chenil (id_chenil, id_confort, denomination, hauteur, type_animal, image) VALUES (9, 3, 'Spectacle', -1, 'Pour tous', 'spectacle.jpg');
INSERT INTO chenil (id_chenil, id_confort, denomination, hauteur, type_animal, image) VALUES (10, 3, 'Série animalière', -1, 'Chats', 'tv1.jpg');
INSERT INTO chenil (id_chenil, id_confort, denomination, hauteur, type_animal, image) VALUES (11, 3, 'Internet', -1, 'Pour tous', 'tablette.jpg');
INSERT INTO chenil (id_chenil, id_confort, denomination, hauteur, type_animal, image) VALUES (12, 3, 'Eveil', -1, 'Chats', 'jeu_chat5.jpg');
INSERT INTO chenil (id_chenil, id_confort, denomination, hauteur, type_animal, image) VALUES (13, 3, 'Bricolage', -1, 'Pour tous', 'construction.jpg');
INSERT INTO chenil (id_chenil, id_confort, denomination, hauteur, type_animal, image) VALUES (14, 3, 'Jeux de rôle', -1, 'Chiens', 'jeu_role.jpg');
INSERT INTO chenil (id_chenil, id_confort, denomination, hauteur, type_animal, image) VALUES (15, 3, 'Basket', -1, 'Chiens', 'ballon.jpg');
INSERT INTO chenil (id_chenil, id_confort, denomination, hauteur, type_animal, image) VALUES (16, 3, 'Jeux vidéo', -1, 'Pour tous', 'jeu_video.jpg');


create or replace table jouet_pet (id_jouet_pet serial not null primary key, nom_jouet text, type_animal text,image text);
insert into jouet_pet (nom_jouet,type_animal,image) values ('Souris','Chats','jeu_chat2.jpg');
insert into jouet_pet (nom_jouet,type_animal,image) values ('Bascule','Chats','jeu_chat3.jpg');
insert into jouet_pet (nom_jouet,type_animal,image) values ('Pelote de laine','Chats','jeu_chat4.jpg');
insert into jouet_pet (nom_jouet,type_animal,image) values ('Circuit','Chats','circuit.jpg');
insert into jouet_pet (nom_jouet,type_animal,image) values ('Frisbee','Chiens','jeu_chien4.jpg');
insert into jouet_pet (nom_jouet,type_animal,image) values ('Os','Chiens','jeu_chien2.jpg');
insert into jouet_pet (nom_jouet,type_animal,image) values ('Bouée','Chiens','jeu_chien1.jpg');
insert into jouet_pet (nom_jouet,type_animal,image) values ('Set de jeu','Chiens','jeu_chien5.jpg');

CREATE VIEW vue_chenil 
AS SELECT 
  chenil.id_chenil, chenil.id_confort, chenil.denomination, chenil.hauteur, chenil.type_animal, chenil.image 
FROM confort, chenil 
WHERE confort.id_confort = chenil.id_confort;
