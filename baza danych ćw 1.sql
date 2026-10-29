CREATE TABLE kategoria (
id_kategorii INT auto_increment primary KEY,
nazwa varchar(50)
);

DESC kategoria;

insert into kategoria (nazwa)
values ('Komputery');

insert into kategoria (nazwa)
values 
	('Akcesoria'),
    ('Sprzęt peryferyjny');
    
insert into kategoria
values (4, 'Test2');

select * from kategoria;

update kategoria
set nazwa = 'Test2'
where id_kategorii = 4;

alter table kategoria
modify nazwa varchar(50) not null;

delete from kategoria where id_kategorii = 4;

create table produkt (
	id_produktu int auto_increment primary key,
    data_dodania date,
    id_kategorii int,
    foreign key(id_kategorii)
		references kategoria(id_kategorii)
);

alter table produkt
add column nazwa varchar(50) not null;

desc produkt;

insert into produkt
values (1, '2026-10-29', 1, 'ziemniak');

delete from kategoria where id_kategorii = 1;

alter table produkt
drop foreign key produkt_ibfk_1;
add foreign key(id_kategorii)
		references kategoria(id_kategorii)
        on delete set null;

select * from produkt;