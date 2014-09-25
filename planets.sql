CREATE TABLE planet
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(64),
    division VARCHAR(64),
    PRIMARY KEY(id)
);

CREATE TABLE user
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(64),
    password VARCHAR(64),
    PRIMARY KEY(id)
);

INSERT INTO user(username, password) VALUES("foo@bar.net", "abc123");
INSERT INTO user(username, password) VALUES("baz@qux.net", "password");
INSERT INTO user(username, password) VALUES("joshg@example.org", "hackme");

INSERT INTO planet(name, division) VALUES("Archanis", "Klingon");
INSERT INTO planet(name, division) VALUES("Boreth", "Klingon");
INSERT INTO planet(name, division) VALUES("Donatu", "Klingon");
INSERT INTO planet(name, division) VALUES("Elas", "Klingon");
INSERT INTO planet(name, division) VALUES("Forcas", "Klingon");
INSERT INTO planet(name, division) VALUES("Ganalda", "Klingon");
INSERT INTO planet(name, division) VALUES("H'atoria", "Klingon");
INSERT INTO planet(name, division) VALUES("Hitora colony", "Klingon");
INSERT INTO planet(name, division) VALUES("Khitomer", "Klingon");
INSERT INTO planet(name, division) VALUES("Korvat colony", "Klingon");
INSERT INTO planet(name, division) VALUES("Krios Prime", "Klingon");
INSERT INTO planet(name, division) VALUES("Maranga", "Klingon");
INSERT INTO planet(name, division) VALUES("Morska", "Klingon");
INSERT INTO planet(name, division) VALUES("N'Vak colony", "Klingon");
INSERT INTO planet(name, division) VALUES("Narendra", "Klingon");
INSERT INTO planet(name, division) VALUES("Neural", "Klingon");
INSERT INTO planet(name, division) VALUES("Organia", "Klingon");
INSERT INTO planet(name, division) VALUES("Praxis", "Klingon");
INSERT INTO planet(name, division) VALUES("Qo'noS", "Klingon");
INSERT INTO planet(name, division) VALUES("Qu'Vat", "Klingon");
INSERT INTO planet(name, division) VALUES("Raatooras", "Klingon");
INSERT INTO planet(name, division) VALUES("Rura Penthe", "Klingon");
INSERT INTO planet(name, division) VALUES("Tessic's colony", "Klingon");
INSERT INTO planet(name, division) VALUES("Troyius", "Klingon");
INSERT INTO planet(name, division) VALUES("Ty'Gokor", "Klingon");
INSERT INTO planet(name, division) VALUES("Xarantine", "Klingon");


INSERT INTO planet(name, division) VALUES("Algolian", "Federation");
INSERT INTO planet(name, division) VALUES("Andoria", "Federation");
INSERT INTO planet(name, division) VALUES("Arbazan", "Federation");
INSERT INTO planet(name, division) VALUES("Arcadian", "Federation");
INSERT INTO planet(name, division) VALUES("Ardana ", "Federation");
INSERT INTO planet(name, division) VALUES("Ariolo", "Federation");
INSERT INTO planet(name, division) VALUES("Babel", "Federation");
INSERT INTO planet(name, division) VALUES("Benzar", "Federation");
INSERT INTO planet(name, division) VALUES("Betazed", "Federation");
INSERT INTO planet(name, division) VALUES("Bolarus", "Federation");
INSERT INTO planet(name, division) VALUES("Bzzit Khaht", "Federation");
INSERT INTO planet(name, division) VALUES("Caitian", "Federation");
INSERT INTO planet(name, division) VALUES("Coridan", "Federation");
INSERT INTO planet(name, division) VALUES("Delta", "Federation");
INSERT INTO planet(name, division) VALUES("Earth", "Federation");
INSERT INTO planet(name, division) VALUES("Efrosian", "Federation");
INSERT INTO planet(name, division) VALUES("Grazerite", "Federation");
INSERT INTO planet(name, division) VALUES("Haliia", "Federation");
INSERT INTO planet(name, division) VALUES("Hekaras", "Federation");
INSERT INTO planet(name, division) VALUES("Jaresh-Inyo", "Federation");
INSERT INTO planet(name, division) VALUES("Kasheeta ", "Federation");
INSERT INTO planet(name, division) VALUES("Ktaris", "Federation");
INSERT INTO planet(name, division) VALUES("Peliar Zel", "Federation");
INSERT INTO planet(name, division) VALUES("Rigel ", "Federation");
INSERT INTO planet(name, division) VALUES("Risa", "Federation");
INSERT INTO planet(name, division) VALUES("Tellar Prime", "Federation");
INSERT INTO planet(name, division) VALUES("Trillius Prime", "Federation");
INSERT INTO planet(name, division) VALUES("Vulcan", "Federation");
INSERT INTO planet(name, division) VALUES("Xelatian", "Federation");
INSERT INTO planet(name, division) VALUES("Zaranite", "Federation");


INSERT INTO planet(name, division) VALUES("Benzar", "Romulan");
INSERT INTO planet(name, division) VALUES("Carraya", "Romulan");
INSERT INTO planet(name, division) VALUES("Chaltok", "Romulan");
INSERT INTO planet(name, division) VALUES("Eden", "Romulan");
INSERT INTO planet(name, division) VALUES("Khitomer", "Romulan");
INSERT INTO planet(name, division) VALUES("Rator", "Romulan");
INSERT INTO planet(name, division) VALUES("Remus", "Romulan");
INSERT INTO planet(name, division) VALUES("Romulus", "Romulan");


INSERT INTO planet(name, division) VALUES("Adarak Prime", "Cardassian");
INSERT INTO planet(name, division) VALUES("Amleth", "Cardassian");
INSERT INTO planet(name, division) VALUES("AR-558", "Cardassian");
INSERT INTO planet(name, division) VALUES("Arawath colony", "Cardassian");
INSERT INTO planet(name, division) VALUES("Atbar Prime", "Cardassian");
INSERT INTO planet(name, division) VALUES("Avenal", "Cardassian");
INSERT INTO planet(name, division) VALUES("Cardassia I", "Cardassian");
INSERT INTO planet(name, division) VALUES("Cardassia III", "Cardassian");
INSERT INTO planet(name, division) VALUES("Cardassia IV", "Cardassian");
INSERT INTO planet(name, division) VALUES("Cardassia Prime", "Cardassian");
INSERT INTO planet(name, division) VALUES("Cardassia V", "Cardassian");
INSERT INTO planet(name, division) VALUES("Celtris", "Cardassian");
INSERT INTO planet(name, division) VALUES("Chin'toka II", "Cardassian");
INSERT INTO planet(name, division) VALUES("Chin'toka III", "Cardassian");
INSERT INTO planet(name, division) VALUES("Felton Prime", "Cardassian");
INSERT INTO planet(name, division) VALUES("Goralis", "Cardassian");
INSERT INTO planet(name, division) VALUES("Kelvas", "Cardassian");
INSERT INTO planet(name, division) VALUES("Kelvas Prime", "Cardassian");
INSERT INTO planet(name, division) VALUES("Kora", "Cardassian");
INSERT INTO planet(name, division) VALUES("Korma", "Cardassian");
INSERT INTO planet(name, division) VALUES("Lazon", "Cardassian");
INSERT INTO planet(name, division) VALUES("Loval", "Cardassian");
INSERT INTO planet(name, division) VALUES("Monac", "Cardassian");
INSERT INTO planet(name, division) VALUES("Omekla", "Cardassian");
INSERT INTO planet(name, division) VALUES("Orias", "Cardassian");
INSERT INTO planet(name, division) VALUES("Pentath", "Cardassian");
INSERT INTO planet(name, division) VALUES("Pullock", "Cardassian");
INSERT INTO planet(name, division) VALUES("Quinor", "Cardassian");
INSERT INTO planet(name, division) VALUES("Rakal", "Cardassian");
INSERT INTO planet(name, division) VALUES("Regulak", "Cardassian");
INSERT INTO planet(name, division) VALUES("Rondac", "Cardassian");
INSERT INTO planet(name, division) VALUES("Sarpedion", "Cardassian");
INSERT INTO planet(name, division) VALUES("Septimus", "Cardassian");
INSERT INTO planet(name, division) VALUES("Sheva", "Cardassian");
INSERT INTO planet(name, division) VALUES("Simperia", "Cardassian");
INSERT INTO planet(name, division) VALUES("Soukara", "Cardassian");
INSERT INTO planet(name, division) VALUES("Torros", "Cardassian");
INSERT INTO planet(name, division) VALUES("Trelka", "Cardassian");
INSERT INTO planet(name, division) VALUES("Unefra", "Cardassian");
INSERT INTO planet(name, division) VALUES("Vanden Prime", "Cardassian");
INSERT INTO planet(name, division) VALUES("Velos", "Cardassian");