create table projekt (
id_projektu int
auto_increment primary key,
nazwa_projektu varchar(150),
data_rozpoczecia date,
data_zakonczenia date null
);

alter table projekt
add menadzer_projektu int,
add foreign key
(menadzer_projektu)
references
pracownik(id_pracownika);

insert into projekt
(nazwa_projektu, data_rozpoczecia, data_zakonczenia, menadzer_projektu)
values
('Projekt strony internetowej', '2026-01-15', null, 1),
('Projekt bazy danych', '2026-02-01', '2026-06-30', 2);

alter table zadanie
add projekt int,
add foreign key (projekt)
references projekt(id_projektu)
on delete cascade;

update zadanie
set projekt = 1
where pracownik = 1;

update zadanie
set projekt = 2
where pracownik = 2

select * from projekt;
select * from zadanie;

describe projekt;