create  table if not exists singers (
	id serial primary key,
	name text not null unique
	
);

create table if not exists albums (
	id serial primary key,
	name text not null unique,
	year integer not null,
	singer integer references singers(id)
);

create table if not exists genres (
	id serial primary key,
	name varchar(40) not null 
);

alter table singers
add column id_ganre integer not null references genres(id);

create table if not exists tracks (
	id serial primary key,
	id_album integer not null references albums(id),
	name varchar(60) not null
);
