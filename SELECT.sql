--количество исполнителей в каждом жанре
select genre_name, count(*)
from genre join genre_performers 
ON genre_performers.id_genre = genre.id_genre
group by genre.id_genre

--количество треков, вошедших в альбомы 2019-2020 годов
select count(t.name_)
from albums_track at2 
	join albums a on at2.id_album_ = a.id_album
	join tracks t on at2.id_track_  = t.id_track
where a.production_year between '2019-01-01' and '2020-01-01'

--средняя продолжительность треков по каждому альбому
select a.album_name, avg(t.length_)
from albums_track at2
	join albums a on at2.id_album_ = a.id_album
	join tracks t on at2.id_track_  = t.id_track
group by a.album_name

--все исполнители, которые не выпустили альбомы в 2020 году
select p.performer_name
from albums_performers ap 
	join albums a on a.id_album = ap.id_album
	join performer p ON p.id_performer = ap.id_performer
where p.performer_name not in (select p.performer_name
				 from albums_performers ap 
				 join albums a on a.id_album = ap.id_album
				 join performer p ON p.id_performer = ap.id_performer
				 where a.production_year = '2020-01-01')

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами)
select c.name_, p.performer_name
from performer p 
	join albums_performers ap on p.id_performer = ap.id_performer
	join albums a on ap.id_album = a.id_album 
	join albums_track at2 on at2.id_album_ = a.id_album
	join tracks t on t.id_track = at2.id_track_
	join compilation_tracks ct on ct.id_track = t.id_track
	join collection_ c on ct.id_collection = c.id_collection
where p.performer_name = 'Igorrr'

--название альбомов, в которых присутствуют исполнители более 1 жанра
select a.album_name, count(p.performer_name) 
from albums a 
	join albums_performers ap on a.id_album = ap.id_album
	join performer p on p.id_performer = ap.id_performer
	join genre_performers gp on gp.id_performer = p.id_performer
	join genre g on gp.id_genre = g.id_genre
group by a.album_name
having count(g.genre_name) > 1

--наименование треков, которые не входят в сборники
select t.id_track, t.name_, t.length_
from tracks t left join compilation_tracks ct on t.id_track = ct.id_track
order by ct.id_track

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)
select p.performer_name, t.length_
from performer p join albums_performers ap on p.id_performer = ap.id_performer
	join albums a on a.id_album = ap.id_album
	join albums_track at2 on a.id_album = at2.id_album_
	join tracks t on t.id_track = at2.id_track_
where t.length_ = (select min(t.length_) from tracks t inner join albums_track at3 on t.id_track = at3.id_track_)


--название альбомов, содержащих наименьшее количество треков
select a.album_name, count(t.name_)
from albums a 
	join albums_track at2 on a.id_album = at2.id_album_
	join tracks t on at2.id_track_ = t.id_track
group by a.album_name -- я так и не понял, как сделать это задание правильно, чтобы выводились все самые маленькие значения, то есть только 1
order by count(t.name_) -- подскажите пожалуйста, как это сделать///!

--Во внешнем запросе вам нужно объединить таблицы треков и альбомов и сгруппировать их по альбомам
select a.album_name
from albums_track at2 
	join albums a on a.id_album = at2.id_album_
	join tracks t on t.id_track = at2.id_track_
group by a.album_name
having count(t.name_) = (SELECT count(t2.name_)
                            FROM albums a2  JOIN tracks t2 
                            ON a2.id_album = t2.id_track 
                            GROUP BY a2.album_name 
                            ORDER BY count(t2.name_)
                            LIMIT 1);

