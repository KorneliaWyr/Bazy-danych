CREATE TABLE zadanie (
id_zadania INT auto_increment
primary key,
nazwa_zadania varchar(150)
not null,
priorytet enum('normalny', 'wysoki', 'niski'),
opis text null,
pracownik int null,
foreign key (pracownik)
references
pracownik(id_pracownika)
on delete set null
);

alter table zadanie
modify priorytet enum('normalny', 'wysoki', 'niski')
default 'normalny';

insert into zadanie
(nazwa_zadania, pracownik)
select
concat('Zadanie dla pracownika ', id_pracownika),
id_pracownika
from pracownik;

select * from zadanie