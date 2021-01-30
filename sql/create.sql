CREATE SCHEMA wiezienie;
set search_path to wiezienie;


CREATE TABLE zmiana (
                id_zmiana BIGSERIAL NOT NULL,
                nazwa VARCHAR NOT NULL,
                CONSTRAINT id_zmiana PRIMARY KEY (id_zmiana)
);


CREATE TABLE zawod (
                id_zawod BIGSERIAL NOT NULL,
                opis VARCHAR NOT NULL,
                CONSTRAINT id_zawod PRIMARY KEY (id_zawod)
);


CREATE TABLE termin (
                id_termin BIGSERIAL NOT NULL,
                data DATE NOT NULL,
                CONSTRAINT id_termin PRIMARY KEY (id_termin)
);


CREATE TABLE wizytator (
                id_wizytator BIGSERIAL NOT NULL,
                imie VARCHAR NOT NULL,
                nazwisko VARCHAR NOT NULL,
                plec VARCHAR NOT NULL,
                CONSTRAINT id_wizytator PRIMARY KEY (id_wizytator)
);


CREATE TABLE praca (
                id_praca BIGSERIAL NOT NULL,
                opis VARCHAR NOT NULL,
                CONSTRAINT id_praca PRIMARY KEY (id_praca)
);


CREATE TABLE blok (
                id_blok BIGSERIAL NOT NULL,
                nazwa VARCHAR NOT NULL,
                CONSTRAINT id_blok PRIMARY KEY (id_blok)
);


CREATE TABLE pomieszczenie (
                id_pomieszczenie BIGSERIAL NOT NULL,
                id_blok INTEGER NOT NULL,
                numer INTEGER NOT NULL,
                CONSTRAINT id_pomieszczenie PRIMARY KEY (id_pomieszczenie)
);


CREATE TABLE pracownik (
                id_pracownik BIGSERIAL NOT NULL,
                imie VARCHAR NOT NULL,
                nazwisko VARCHAR NOT NULL,
                plec VARCHAR NOT NULL,
                id_zawod INTEGER NOT NULL,
                id_pomieszczenie INTEGER,
                id_zmiana INTEGER NOT NULL,
                CONSTRAINT id_pracownik PRIMARY KEY (id_pracownik)
);


CREATE TABLE cela (
                id_cela BIGSERIAL NOT NULL,
                id_blok INTEGER NOT NULL,
                numer INTEGER NOT NULL,
                CONSTRAINT id_cela PRIMARY KEY (id_cela)
);


CREATE TABLE wyrok (
                id_wyrok BIGSERIAL NOT NULL,
                nazwa VARCHAR NOT NULL,
                CONSTRAINT id_wyrok PRIMARY KEY (id_wyrok)
);


CREATE TABLE wiezien (
                id_wiezien BIGSERIAL NOT NULL,
                imie VARCHAR NOT NULL,
                nazwisko VARCHAR NOT NULL,
                plec VARCHAR NOT NULL,
                id_cela INTEGER NOT NULL,
                data_rozpoczecia DATE NOT NULL,
                data_zakonczenia DATE NOT NULL,
                CONSTRAINT id_wiezien PRIMARY KEY (id_wiezien)
);


CREATE TABLE wizyta (
                id_wizyta BIGSERIAL NOT NULL,
                id_termin INTEGER NOT NULL,
                id_wiezien INTEGER NOT NULL,
                id_wizytator INTEGER NOT NULL,
                CONSTRAINT id_wizyta PRIMARY KEY (id_wizyta)
);


CREATE TABLE wykroczenie (
                id_wykroczenie BIGSERIAL NOT NULL,
                id_wiezien INTEGER NOT NULL,
                opis VARCHAR NOT NULL,
                data DATE NOT NULL,
                kara VARCHAR NOT NULL,
                CONSTRAINT id_wykroczenie PRIMARY KEY (id_wykroczenie)
);


CREATE TABLE praca_wieznia (
                id_praca_wieznia BIGSERIAL NOT NULL,
                id_wiezien INTEGER NOT NULL,
                id_praca INTEGER NOT NULL,
                CONSTRAINT id_praca_wieznia PRIMARY KEY (id_praca_wieznia)
);


CREATE TABLE wyrok_wieznia (
                id_wyrok_wieznia BIGSERIAL NOT NULL,
                id_wyrok INTEGER NOT NULL,
                id_wiezien INTEGER NOT NULL,
                CONSTRAINT id_wyrok_wieznia PRIMARY KEY (id_wyrok_wieznia)
);


ALTER TABLE pracownik ADD CONSTRAINT zmiana_pracownik_fk
FOREIGN KEY (id_zmiana)
REFERENCES zmiana (id_zmiana)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE pracownik ADD CONSTRAINT zawod_pracownik_fk
FOREIGN KEY (id_zawod)
REFERENCES zawod (id_zawod)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE wizyta ADD CONSTRAINT termin_wizyta_fk
FOREIGN KEY (id_termin)
REFERENCES termin (id_termin)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE wizyta ADD CONSTRAINT wizytor_wizyta_fk
FOREIGN KEY (id_wizytator)
REFERENCES wizytator (id_wizytator)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE praca_wieznia ADD CONSTRAINT praca_praca_wieznia_fk
FOREIGN KEY (id_praca)
REFERENCES praca (id_praca)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE cela ADD CONSTRAINT blok_cela_fk
FOREIGN KEY (id_blok)
REFERENCES blok (id_blok)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE pomieszczenie ADD CONSTRAINT blok_pomieszczenie_fk
FOREIGN KEY (id_blok)
REFERENCES blok (id_blok)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE pracownik ADD CONSTRAINT pomieszczenie_pracownik_fk
FOREIGN KEY (id_pomieszczenie)
REFERENCES pomieszczenie (id_pomieszczenie)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE wiezien ADD CONSTRAINT cela_wiezien_fk
FOREIGN KEY (id_cela)
REFERENCES cela (id_cela)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE wyrok_wieznia ADD CONSTRAINT wyrok_wyrok_wieznia_fk
FOREIGN KEY (id_wyrok)
REFERENCES wyrok (id_wyrok)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE wyrok_wieznia ADD CONSTRAINT wiezien_wyrok_wieznia_fk
FOREIGN KEY (id_wiezien)
REFERENCES wiezien (id_wiezien)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE praca_wieznia ADD CONSTRAINT wiezien_praca_wieznia_fk
FOREIGN KEY (id_wiezien)
REFERENCES wiezien (id_wiezien)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE wykroczenie ADD CONSTRAINT wiezien_wykroczenie_fk
FOREIGN KEY (id_wiezien)
REFERENCES wiezien (id_wiezien)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE wizyta ADD CONSTRAINT wiezien_wizyta_fk
FOREIGN KEY (id_wiezien)
REFERENCES wiezien (id_wiezien)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;