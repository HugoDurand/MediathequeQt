CREATE TABLE adresse (
id int NOT NULL,
  num varchar(255) NOT NULL,
  rue varchar(255) NOT NULL,
  code_postal varchar(255) NOT NULL,
  ville varchar(255) NOT NULL,
  pays varchar(255) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE album (
id int NOT NULL,
  titre varchar(255) DEFAULT NULL,
  description text,
  durée time(0) DEFAULT NULL,
  id_genre int DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE film (
id int NOT NULL,
  titre varchar(255) DEFAULT NULL,
  realisateur varchar(255) DEFAULT NULL,
  date_sortie date DEFAULT NULL,
  duree time(0) DEFAULT NULL,
  synospis text,
  distribution varchar(255) DEFAULT NULL,
  id_acteur int DEFAULT NULL,
  id_genre int DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE genre (
id int NOT NULL,
  libelle varchar(255) DEFAULT NULL,
  description text
) ;

-- --------------------------------------------------------

--
-- Table structure for table `livre`
--

CREATE TABLE livre (
id int NOT NULL,
  auteur varchar(255) DEFAULT NULL,
  titre varchar(255) DEFAULT NULL,
  date_sortie date DEFAULT NULL,
  editeur varchar(255) DEFAULT NULL,
  nb_pages int DEFAULT NULL,
  id_genre int DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `membre`
--

CREATE TABLE membre (
id int NOT NULL,
  nom varchar(255) DEFAULT NULL,
  prenom varchar(255) DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  password varchar(255) DEFAULT NULL,
  date_naissance date DEFAULT NULL,
  date_inscription date DEFAULT NULL,
  date_derniere_modification date DEFAULT NULL,
  tel varchar(255) DEFAULT NULL,
  id_adresse int DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `personne`
--

CREATE TABLE personne (
id int NOT NULL,
  nom varchar(255) DEFAULT NULL,
  prenom varchar(255) DEFAULT NULL,
  date_naissance date DEFAULT NULL,
  nationalite varchar(255) DEFAULT NULL,
  id_role int DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `piste`
--

CREATE TABLE piste (
id int NOT NULL,
  titre varchar(255) DEFAULT NULL,
  duree time(0) DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE role (
id int NOT NULL,
  libelle varchar(255) NOT NULL
) ;
-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE location (
id int NOT NULL,
  id_personne int NOT NULL,
  id_media int NOT NULL,
  emprunt date DEFAULT NULL,
  retour date DEFAULT NULL
) ;


--
-- Indexes for dumped tables
--

--
-- Indexes for table `adresse`
--
ALTER TABLE adresse
 ADD PRIMARY KEY (id);

--
-- Indexes for table `album`
--
ALTER TABLE album
 ADD PRIMARY KEY (id), ADD KEY `id_genre` (id_genre);

--
-- Indexes for table `film`
--
ALTER TABLE film
 ADD PRIMARY KEY (id), ADD KEY `id_genre` (id_genre), ADD KEY `id_acteur` (id_acteur);

--
-- Indexes for table `genre`
--
ALTER TABLE genre
 ADD PRIMARY KEY (id);

--
-- Indexes for table `livre`
--
ALTER TABLE livre
 ADD PRIMARY KEY (id), ADD KEY `id_genre` (id_genre);

--
-- Indexes for table `membre`
--
ALTER TABLE membre
 ADD PRIMARY KEY (id), ADD KEY `id_adresse` (id_adresse);

--
-- Indexes for table `personne`
--
ALTER TABLE personne
 ADD PRIMARY KEY (id), ADD KEY `id_role` (id_role), ADD KEY `id_role_2` (id_role);

--
-- Indexes for table `piste`
--
ALTER TABLE piste
 ADD PRIMARY KEY (id);

--
-- Indexes for table `role`
--
ALTER TABLE role
 ADD PRIMARY KEY (id);
 
 --
-- Indexes for table `location`
--
ALTER TABLE location
 ADD PRIMARY KEY (id), ADD KEY `id_personne` (id_personne), ADD KEY `id_media` (id_media);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adresse`
--
ALTER TABLE adresse
MODIFY id cast(11 as int) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE album
MODIFY id cast(11 as int) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE film
MODIFY id cast(11 as int) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE genre
MODIFY id cast(11 as int) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `livre`
--
ALTER TABLE livre
MODIFY id cast(11 as int) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `membre`
--
ALTER TABLE membre
MODIFY id cast(11 as int) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `personne`
--
ALTER TABLE personne
MODIFY id cast(11 as int) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `piste`
--
ALTER TABLE piste
MODIFY id cast(11 as int) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE role
MODIFY id cast(11 as int) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE location
MODIFY id cast(11 as int) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE album
ADD CONSTRAINT fk_genre_album FOREIGN KEY (id_genre) REFERENCES genre (id);

--
-- Constraints for table `film`
--
ALTER TABLE film
ADD CONSTRAINT fk_acteur_film FOREIGN KEY (id_acteur) REFERENCES acteur (id),
ADD CONSTRAINT fk_genre_film FOREIGN KEY (id_genre) REFERENCES `genre` (id);

--
-- Constraints for table `livre`
--
ALTER TABLE livre
ADD CONSTRAINT fk_genre_livre FOREIGN KEY (id_genre) REFERENCES genre (id);

--
-- Constraints for table `membre`
--
ALTER TABLE membre
ADD CONSTRAINT fk_adresse_membre FOREIGN KEY (id_adresse) REFERENCES adresse (id) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `personne`
--
ALTER TABLE personne
ADD CONSTRAINT fk_role_personne FOREIGN KEY (id_role) REFERENCES role (id);

--
-- Constraints for table `location`
--
ALTER TABLE location
ADD CONSTRAINT fk_personne_location FOREIGN KEY (id_personne) REFERENCES personne (id);
ADD CONSTRAINT fk_media_location FOREIGN KEY (id_media) REFERENCES media (id);