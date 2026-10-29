CREATE TABLE pracownik (
id_pracownika int
auto_increment primary key,
imie varchar(40) not null,
nazwisko varchar(60) not null,
data_urodzenia date not null
	);
    
desc pracownik;

insert into pracownik (imie, nazwisko, data_urodzenia)
values
('Paulina', 'Pudeł', '1998-02-01'),
('Aneta', 'Lipa', '1996-05-22'),
('Ada', 'Bielica', '2002-09-09');

update pracownik
set data_urodzenia = '1985-05-04'
where id_pracownika = 2;

select * from pracownik;