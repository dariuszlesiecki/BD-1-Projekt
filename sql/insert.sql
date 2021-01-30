set search_path to wiezienie;

insert into zmiana(nazwa) values
('pierwsza'),
('druga'),
('trzecia');

insert into zawod(opis) values
('dyrektor zakładu karnego'),
('z-ca dykrektora zakładu karnego'),
('dowódca zmiany'),
('oddziałowy'),
('strażnik'),
('lekarz'),
('szef kuchni'),
('woźny'),
('sprzątaczka'),
('mechanik'),
('wychowawca');

insert into blok(nazwa) values
('A'),
('B');

insert into praca(opis) values
('pomoc w kuchni'),
('sprzatanie'),
('rozdawanie żywności');

insert into wyrok(nazwa) values
('zabójstwo'),
('rozbój'),
('ciężki uszczerbek na zdrowiu'),
('gwałt');

insert into cela(id_blok,numer) values
(1,101),
(1,102),
(1,103),
(1,104),

(2,201),
(2,202),
(2,203),
(2,204);

insert into pomieszczenie(id_blok, numer) values
(1,11),
(1,12),
(1,13),
(1,14),

(2,21),
(2,22),
(2,23),
(2,24);

insert into termin(data) values
('2021-03-01'),
('2021-03-02'),
('2021-03-03');

insert into wiezien(imie, nazwisko, plec, id_cela, data_rozpoczecia, data_zakonczenia) values
('Dariusz', 'Lesiecki', 'mężczyzna', 1, '2021-02-05', '2025-02-05'),
('Pawel', 'Zegarski', 'mężczyzna', 1, '2021-02-05', '2026-02-05');

insert into wizytator(imie, nazwisko, plec) values
('Weronika', 'Kowalczyk', 'kobieta'),
('Anna', 'Lesiecka', 'kobieta');

