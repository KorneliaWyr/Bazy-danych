create table sprint (
id_sprintu int auto_increment primary key,
numer_sprintu int unsigned,
data_rozpoczecia date,
data_zakonczenia date
);

alter table zadanie
add sprint int null;

alter table zadanie
add foreign key (sprint)
references sprint(id_sprintu)
on delete set null;

insert into sprint
(numer_sprintu, data_rozpoczecia, data_zakonczenia)
values
(1, '2026-11-12', '2026-11-26');

update zadanie
set sprint = 1
where id_zadania IN (1, 2);

select * from sprint;
select * from zadanie;

describe sprint;