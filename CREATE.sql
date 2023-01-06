create table if not exists collection_
( 
	id_collection int not null primary key,
	name_ varchar(100) not null,
	production_year date not null
);

create table if not exists tracks
(
	id_track int not null primary key,
	name_ varchar(50) not null,
	length_ time not null
);

create table if not exists compilation_tracks
( 
	id_collection int not null references collection_(id_collection),
	id_track int not null references tracks(id_track),
	primary key(id_collection, id_track)
);

create table if not exists albums
(
	id_album int not null primary key,
	album_name varchar(50) not null,
	production_year date not null
);

create table if not exists albums_track
(
	 id_album int not null references albums(id_album),
	 id_track int not null references tracks(id_track),
	 primary key(id_album, id_track)
);

create table if not exists performer
(
	id_performer int not null primary key,
	performer_name varchar(50) not null
);

create table if not exists genre
(
	id_genre int not null primary key,
	genre_name varchar(50) not null
)

create table if not exists albums_performers
(
	id_album int not null references albums(id_album),
	id_performer int not null references performer(id_performer),
	primary key(id_album, id_performer)
);


create table if not exists genre_performers
(
	id_genre int not null references genre(id_genre),	
	id_performer int not null references performer(id_performer),
	primary key(id_genre, id_performer)
);



