create table status (
id_statusu int auto_increment primary key,
nazwa_statusu varchar(20)
);

insert into status
(nazwa_statusu)
values
('Nowe'),
('W trakcie'),
('Zakończenie');

create table zadanie_has_status (
id_zdarzenia int auto_increment primary key,
id_zadania int,
id_statusu int,
data_zdarzenia datetime
default current_timestamp,
foreign key (id_zadania)
references
zadanie(id_zadania),
foreign key (id_statusu)
references
status(id_statusu)
);

insert into zadanie_has_status
(id_zadania, id_statusu)
values
(1, 1),
(2, 2),
(3, 3);

delete from projekt
where id_projektu = 1;

alter table zadanie
drop foreign key zadanie_ibfk_3

alter table zadanie
drop column sprint;

drop table sprint;

select * from zadanie_has_status;
select * from status