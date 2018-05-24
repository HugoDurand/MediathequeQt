/* --------------- Ajout, Modification et Suppression de média --------------- */

						/* id, titre, durée, id_artiste */
INSERT INTO piste VALUES (nextval('seq_id_piste'), 'Hello', 6, 1);  

						/* id, libelle, description */
INSERT INTO genre VALUES (nextval('seq_id_genre'), 'Action', ' Met en scène une succession de scènes spectaculaires [...] ');  

						/* id, auteur, titre, date de sortie, editeur, nombre de page, id_genre */
INSERT INTO livre VALUES (nextval('seq_id_livre'),  'Claude Delannoy', 'Apprendre le C++', 'EYROLLES', '250', 6);

						/* Mettre à jour une piste selectionné par l'application */
UPDATE piste SET titre='Hello remix 10 hours' WHERE id=1;

						/* Mettre à jour une piste selectionné par l'application */
UPDATE genre SET description='Met en scène une succession de scènes spectaculaires [...] mais aussi [...}' WHERE id=1;

						/* Mettre à jour un livre selectionné par l'application */
UPDATE livre SET editeur='NEW LANG' WHERE id=1;

						/* Supprime un livre selectionné par l'application*/
DELETE FROM piste WHERE id=1;

						/* Supprime le genre action*/
DELETE FROM genre WHERE libelle='Action';

						/* Supprime tout les livres d'un auteur*/
DELETE FROM livre WHERE auteur='Claude Delannoy';

/* --------------- Rechercher un média à partir d'une information --------------- */

						/* Récupère les pistes qui commence par 'Hel' */
SELECT * FROM piste WHERE titre like 'Hel%';

						/* Récupère les genres qui commence par 'A' */
SELECT * FROM genre WHERE libelle like 'A%';

						/* Récupère tout les livres de Claude Dellanoy */
SELECT * FROM livre WHERE auteur='Claude Delannoy';

/* Location */
						/* id, id_personne, id_media, date emprunt, date retour */
INSERT INTO location VALUES (nextval('seq_id_location'), 1, 34, '20-05-2018', '30-05-2018'); 

						/* id, id_personne, id_media, date emprunt, date retour */
INSERT INTO location VALUES (nextval('seq_id_location'), 8, 104, '22-05-2018', '05-06-2018'); 