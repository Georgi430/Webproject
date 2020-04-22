create table car (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19, 2) NOT NULL
);

create table person (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100),
	gender VARCHAR(7) NOT NULL,
	date_of_birth DATE NOT NULL,
	Country VARCHAR(50),
	car_id BIGINT REFERENCES car (id),
	UNIQUE (car_id) 
);


insert into person (first_name, last_name, email, gender, date_of_birth, Country) values ('Kyrstin', 'Meachem', 'kmeachem0@ustream.tv', 'Female', '2020-04-13', 'China');
insert into person (first_name, last_name, email, gender, date_of_birth, Country) values ('Jerrie', 'Hambric', 'jhambric1@statcounter.com', 'Female', '2019-07-31', 'Finland');
insert into person (first_name, last_name, email, gender, date_of_birth, Country) values ('Breanne', 'Andrichak', null, 'Female', '2020-02-12', 'Panama');
insert into person (first_name, last_name, email, gender, date_of_birth, Country) values ('Violante', 'O'' Mara', 'vomara3@biblegateway.com', 'Female', '2020-01-06', 'Indonesia');
insert into person (first_name, last_name, email, gender, date_of_birth, Country) values ('Royall', 'Malafe', 'rmalafe4@cnbc.com', 'Male', '2019-12-07', 'Portugal');
insert into person (first_name, last_name, email, gender, date_of_birth, Country) values ('Maddie', 'Zanelli', null, 'Female', '2019-06-21', 'China');
insert into person (first_name, last_name, email, gender, date_of_birth, Country) values ('Nathaniel', 'MacMickan', 'nmacmickan6@bloomberg.com', 'Male', '2020-02-17', 'Colombia');

insert into car ( make, model, price) values  ('Honda', 'CR-V', '14033.38');
insert into car ( make, model, price) values  ('Aston Martin', 'DB9 Volante', '65868.81');
insert into car ( make, model, price) values  ('Saturn', 'Aura', '73202.37');
insert into car ( make, model, price) values  ('Lincoln', 'Aviator', '78367.48');
insert into car ( make, model, price) values  ('Mitsubishi', 'Diamante', '65853.18');
