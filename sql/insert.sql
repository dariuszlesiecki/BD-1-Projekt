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
('Pawel', 'Mamak', 'mężczyzna', 1, '2021-02-05', '2026-02-05'),
('Jan', 'Kot', 'mężczyzna', 2, '2020-02-05', '2027-05-02');

insert into praca_wieznia(id_wiezien, id_praca) values
(1,1);

insert into wyrok_wieznia(id_wyrok, id_wiezien) values
(1,1),
(2,2),
(3,1),
(3,3);

insert into wizytator(imie, nazwisko, plec) values
('Weronika', 'Kowalczyk', 'kobieta'),
('Anna', 'Lesiecka', 'kobieta');

insert into pracownik(imie, nazwisko, plec, id_zawod,id_pomieszczenie, id_zmiana) values
('Krzysztof' ,'Kononowicz' ,'mężczyzna' ,1 ,1 ,1 ),
('Major' ,'Suchodolski' ,'mężczyzna' ,2 ,1 ,1 ),
('Paweł' ,'Garcarz' ,'mężczyzna' ,3 ,2 ,1 ),
('Bartek' ,'Duda' ,'mężczyzna' ,3 ,2 ,2 ),
('Kacper' ,'Wąsik' ,'mężczyzna' ,3 ,2 ,3 ),
('Jan' ,'Rodo' ,'mężczyzna' ,4 ,3 ,1 ),
('Krzysztof' ,'Rozpruwacz' ,'mężczyzna' ,4 ,3 ,2 ),
('Filip' ,'Kogut' ,'mężczyzna' ,4 ,3 ,3 ),
('Konrad' ,'Duda' ,'mężczyzna' ,5 ,4 ,1 ),
('Ernest' ,'Baran' ,'mężczyzna' ,5 ,4 ,1 ),
('Marek' ,'Marciniak' ,'mężczyzna' ,5 ,4 ,2 ),
('Gniewomir' ,'Cieślak' ,'mężczyzna' ,5 ,4 ,2 ),
('Ariel' ,'Wróblewski' ,'mężczyzna' ,5 ,4 ,3 ),
('Denis' ,'Ziółkowska' ,'mężczyzna' ,5 ,4 ,3 ),
('Leszek' ,'Borkowski' ,'mężczyzna' ,6 ,5 ,1 ),
('Denis' ,'Kucharski' ,'mężczyzna' ,6 ,5 ,2 ),
('Kordian' ,'Kwiatkowski' ,'mężczyzna' ,6 ,5 ,3 ),
('Franciszek' ,'Zakrzewska' ,'mężczyzna' ,7 ,6 ,1),
('Kamil' ,'Włodarczyk' ,'mężczyzna' ,7 ,6 ,2 ),
('Florian' ,'Wojciechowski' ,'mężczyzna' ,7 ,6 ,3 );