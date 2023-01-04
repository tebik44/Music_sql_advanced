INSERT INTO genre (id_genre, genre_name)
VALUES
    (1, 'Rock'),
    (2, 'Pop'),
    (3, 'Rap'),
    (4, 'Jazz'),
    (5, 'Metal'),
    (6, 'PostMetal'),
    (7, 'Soul'),
    (8, 'Afrobeat'),
    (9, 'Reggae'),
    (10, 'Breakcore'),
    (11, 'Progressive'),
    (12, 'Indie'),
    (13, 'Electronic music'),
    (14, 'Folk');
    
INSERT INTO performer (id_performer, performer_name)
VALUES
    (1, 'Nneka'),
    (2, 'Jaqee'),
    (3, 'Corpo-Mente'),
    (4, 'Igorrr'),
    (5, 'Myrkur'),
    (6, 'Mastodon'),
    (7, 'The Claypool Lennon Delirium'),
    (8, 'Riff Cohen'),
    (9, 'Animals as Leaders'),
    (10, 'Grimes'),
    (11, 'Austra'),
    (12, 'Archspire'),
    (13, 'Progenitor'),
    (14, 'Agnes Obel'),
    (15, 'MC Autoimmunn'),
    (16, 'Heilung');


INSERT INTO genre_performers (id_performer, id_genre)
VALUES
    (1, 7),
    (1, 8),
    (1, 9),
    (2, 7),
    (2, 4),
    (2, 9),
    (2, 2),
    (3, 6),
    (3, 12),
    (4, 5),
    (4, 6),
    (4, 10),
    (4, 11),
    (4, 12),
    (5, 6),
    (5, 12),
    (5, 13),
    (6, 5),
    (6, 11),
    (7, 1),
    (7, 11),
    (8, 2),
    (9, 4),
    (9, 5),
    (9, 11),
    (10, 12),
    (10, 13),
    (11, 12),
    (11, 13),
    (12, 5),
    (13, 5),
    (14, 12),
    (15, 3),
    (16, 14);
   
INSERT INTO albums (id_album, album_name, production_year)
VALUES
    (1, 'My Fairy Tales', '2015-01-01'),
    (2, 'Soul is Heavy', '2011-01-01'),
    (3, 'Fly High', '2017-01-01'),
    (4, 'Corpo-Mente', '2015-01-01'),
    (5, 'Savage Sinusoid', '2017-01-01'),
    (6, 'Mareridt', '2017-01-01'),
    (7, 'The Hunter', '2011-01-01'),
    (8, 'South of Reality', '2019-01-01'),
    (9, 'A Paris', '2012-01-01'),
    (10, 'The Madness of Many', '2016-01-01'),
    (11, 'Visions', '2012-01-01'),
    (12, 'Feel It Break', '2011-01-01'),
    (13, 'Bleed the Future', '2021-01-01'),
    (14, 'True Truth', '2018-01-01'),
    (15, 'Aventine', '2013-01-01'),
    (16, 'Examples', '2018-01-01'),
    (17, 'Lifa', '2018-01-01');
    
INSERT INTO albums_performers (id_album, id_performer)
VALUES
    (1, 1),
    (2, 1),
    (3, 2),
    (4, 3),
    (5, 4),
    (6, 5),
    (7, 6),
    (8, 7),
    (9, 8),
    (10, 9),
    (11, 10),
    (12, 11),
    (13, 12),
    (14, 13),
    (15, 14),
    (16, 15),
    (17, 16);   

INSERT INTO tracks (id_track, name_, length_)
VALUES
    (1, 'Believe System', '00:04:35'),      -- 1
    (2, 'My Love, My Love', '00:03:32'),    -- 2
    (3, 'Book of Job', '00:03:45'),         -- 3

    (4, 'My Home', '00:04:09'),             -- 4
    (5, 'restless', '00:04:45'),            -- 5
    (6, 'Stay', '00:03:24'),                -- 6

    (7, 'Fly High', '00:04:11'),            -- 7
    (8, 'Miracle', '00:04:03'),             -- 8
    (9, 'Perfect World', '00:04:09'),       -- 9
    (10, 'Zola s Dance', '00:03:57'),        -- 10

    (11, 'Scylla', '00:04:22'),              -- 11
    (12, 'Arsalein', '00:04:08'),            -- 12
    (13, 'Fia', '00:03:45'),                 -- 13
    (14, 'Velandi', '00:03:30'),             -- 14

    (15, 'Houmous', '00:03:31'),             -- 15
    (16, 'ieuD', '00:03:55'),                -- 16
    (17, 'Apopathodiaphulatophobie', '00:02:01'),   -- 17
    (18, 'Spaghetti Forever', '00:04:23'),   -- 18

    (19, 'Maneblot', '00:03:33'),            -- 19
    (20, 'The Serpent', '00:04:03'),         -- 20
    (21, 'Crown', '00:04:57'),               -- 21
    (22, 'Ulvinde', '00:04:23'),             -- 22

    (23, 'Black Tongue', '00:03:28'),        -- 23
    (24, 'Curl of the Burl', '00:04:41'),    -- 24
    (25, 'Stargasm', '00:04:40'),            -- 25
    (26, 'The Sparrow', '00:05:31'),         -- 26

    (27, 'Little Fishes', '00:06:07'),       -- 27
    (28, 'Blood and Rockets: Movement', '00:06:30'),
    (29, 'South Of Reality', '00:03:28'),    -- 29
    (30, 'Amethyst Realm', '00:07:48'),      -- 30

    (31, 'Jean qui rit, Jean qui pleure', '00:04:17'),   -- 31
    (32, 'J aime', '00:03:33'),              -- 32

    (33, 'Arithmophobia', '00:06:01'),      -- 33
    (34, 'Ectogenesis', '00:04:56'),        -- 34
    (35, 'Cognitive Contortions', '00:04:29'),  -- 35
    (36, 'Inner Assassins', '00:05:30'),    -- 36
    (37, 'Private Visions of the World', '00:04:57'),   -- 37
    (38, 'Backpfeifengesicht', '00:04:27'), -- 38
    (39, 'Transcentience', '00:05:32'),     -- 39
    (40, 'The Glass Bridge', '00:05:04'),   -- 40
    (41, 'The Brain Dance', '00:07:01'),    -- 41
    (42, 'Apeirophobia', '00:04:59'),       -- 42

    (43, 'Infinite Without Fulfilment', '00:01:36'),    -- 43
    (44, 'Genesis', '00:04:15'),                        -- 44
    (45, 'Oblivion', '00:04:12'),                       -- 45
    (46, 'Eight', '00:01:48'),                          -- 46

    (47, 'Darken Her Horse', '00:05:21'),   -- 47
    (48, 'Lose It', '00:04:29'),            -- 48
    (49, 'The Future', '00:04:03'),         -- 49
    (50, 'Beat and the Pulse', '00:04:56'), -- 50
    (51, 'Spellwork', '00:05:10'),          -- 51
    (52, 'The Choke', '00:04:12'),          -- 52
    (53, 'Hate Crime', '00:04:02'),         -- 53
    (54, 'The Villain', '00:04:06'),        -- 54
    (55, 'Shoot the Water', '00:03:23'),    -- 55
    (56, 'The Noise', '00:03:32'),          -- 56
    (57, 'The Beast', '00:04:03'),          -- 57

    (58, 'Drone Corpse Aviator', '00:03:46'),   -- 58
    (59, 'Golden Mouth of Ruin', '00:04:04'),   -- 59
    (60, 'Abandon the Linear', '00:04:35'),     -- 60
    (61, 'Bleed the Future', '00:03:47'),   -- 61
    (62, 'Drain of Incarnation', '00:04:18'),   -- 62
    (63, 'Reverie on the Onyx', '00:03:46'),    -- 63
    (64, 'A.U.M.', '00:03:03'),                  -- 64

    (65, 'Antichronist', '00:09:24'),           -- 65
    (66, 'Fool in the Van Allen belt', '00:07:20'), -- 66
    (67, 'Synthia My Love', '005:22:'),         -- 67
    (68, 'Nuclear Napoleon', '00:08:12'),       -- 68
    (69, 'It is Flat', '00:06:33'),             -- 69
    (70, 'The Beast from Brussels', '00:10:14'),    -- 70
    (71, 'Leaked Memory', '00:07:02'),          -- 71

    (72, 'Chord Left', '00:02:29'),     -- 72
    (73, 'Fuel to Fire', '00:05:29'),   -- 73
    (74, 'Dorian', '00:04:48'),         -- 74
    (75, 'Aventine', '00:04:08'),       -- 75
    (76, 'Run Cried the Crawling', '00:04:26'), -- 76
    (77, 'Tokka', '00:01:30'),          -- 77
    (78, 'The Curse', '00:05:53'),      -- 78
    (79, 'Pass Them By', '00:03:31'),   -- 79
    (80, 'Words Are Dead', '00:03:46'), -- 80
    (81, 'Fivefold', '00:01:59'),       -- 81
    (82, 'Smoke & Mirrors', '00:02:57'),    -- 82

    (83, 'Coeliac disease', '00:02:1'),             -- 83
    (84, 'Inflammatory bowel disease', '00:02:20'), -- 84
    (85, 'Multiple sclerosis', '00:02:30'),         -- 85
    (86, 'Rheumatoid arthritis', '00:02:40'),       -- 86
    (87, 'Systemic lupus erythematosus', '00:02:50'),   -- 87
    (88, 'Aplastic anemia', '00:03:00'),                -- 88

    (89, 'Opening Ceremony', '00:00:56'),      -- 89
    (90, 'Alfadhirhaiti', '00:07:16'),         -- 90
    (91, 'Krigsgaldr', '00:09:48'),               -- 91
    (92, 'Fylgija Futhorck', '00:12:45');             -- 92


INSERT INTO collection_ (id_collection, name_, production_year)
VALUES
    (1, 'Madness and Tranquility', '2020-01-01'),
    (2, 'Hell and Heaven', '2018-01-01'),
    (3, 'Anything', '2017-01-01'),
    (4, 'Impossible to Listen', '2019-01-01'),
    (5, 'Anachronism', '2018-01-01'),
    (6, 'Folk', '2019-01-01'),
    (7, 'Soul', '2021-01-01'),
    (8, 'Dark Wave and Dream Pop', '2017-01-01');   

INSERT INTO compilation_tracks (id_track, id_collection)
VALUES
    (58, 1),
    (74, 1),
    (33, 1),
    (78, 1),
    (62, 1),
    (30, 1),
    (14, 1),

    (3, 2),
    (20, 2),
    (8, 2),
    (45, 2),
    (7, 2),
    (15, 2),
    (9, 2),

    (10, 3),
    (20, 3),
    (30, 3),
    (40, 3),
    

    (65, 4),  -- Impossible to Listen 65 - 71 83 - 88
    (84, 4),
    (70, 4),
    (87, 4),
    (83, 4),
    (68, 4),
    (71, 4),

    (58, 5),   -- 58 - 64 27 - 30 Anachronism
    (28, 5),
    (63, 5),
    (29, 5),
    (59, 5),
    

    (90, 6),    -- 89 - 92 Folk 19 - 22
    (19, 6),
    (92, 6),
    (22, 6),
    
    (3, 7),    -- Soul 1 - 10
    (5, 7),
    (6, 7),
    (8, 7),
    (10, 7),
    
    (48, 8),     -- dark wave and dream pop 47 - 57
    (51, 8),
    (50, 8),
    (47, 8),
    (44, 8),
    (45, 8);

INSERT INTO albums_track (id_track_, id_album_)
VALUES
	(1,11),
	(1,30),
	(1,31),
	(1,52),
	(2,48),
	(3,6),
	(3,71),
	(3,40),
	(3,18),
	(3,49),
	(4,76),
	(5,11),
	(5,67),
	(5,19),
	(5,84),
	(5,35),
	(6,4),
	(6,24),
	(7,85),
	(7,55),
	(8,56),
	(8,73),
	(9,59),
	(10,21),
	(10,42),
	(10,27),
	(10,3),
	(11,43),
	(11,13),
	(11,74),
	(11,27),
	(12,10),
	(12,37),
	(13,50),
	(14,87),
	(15,14),
	(15,29),
	(15,28),
	(15,3),
	(15,43),
	(15,83),
	(15,22),
	(15,52),
	(15,9),
	(16,29),
	(17,67);



