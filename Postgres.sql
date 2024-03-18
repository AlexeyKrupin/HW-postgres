create table if not exists genre(
	id SERIAL primary key,
	name VARCHAR(60) not null
);

create table if not exists artist(
	id SERIAL primary key,
	name VARCHAR(60) not null
);

create table if not exists artist_genre(
	id SERIAL primary key,
	genre_ID INTEGER not null references genre(id),
	artist_ID INTEGER not null references artist(id)
);

create table if not exists album(
	id SERIAL primary key,
	name VARCHAR(60) not null,
	Year date not null
);

create table if not exists artist_album(
	ID SERIAL primary key,
	album_ID INTEGER not null references album(ID),
	artist_ID INTEGER not null references artist(ID)
);

create table if not exists track(
	ID SERIAL primary key,
	name VARCHAR(60) not null,
	album_ID INTEGER not null references album(ID),
	duration time not null
);

create table if not exists Music_collection(
	ID SERIAL primary key,
	name VARCHAR(60) not null,
	Year date not null
);

create table if not exists music_collection_track(
	ID SERIAL primary key,
	track_ID INTEGER not null references track(ID),
	music_collection_ID INTEGER not null references music_collection(ID)
);