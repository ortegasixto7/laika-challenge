DROP DATABASE IF EXISTS video_club;
CREATE DATABASE video_club;
USE video_club;

DROP TABLE IF EXISTS movies;
CREATE TABLE movies(
  `id` VARCHAR(50) NOT NULL PRIMARY KEY,
  `title` VARCHAR(255) NOT NULL,
  `year` INT NOT NULL,
  `rating` FLOAT NOT NULL,
  `rated` VARCHAR(50) NOT NULL,
  `released_date` VARCHAR(20) NOT NULL,
  `duration` VARCHAR(10) NOT NULL,
  `genres` JSON NOT NULL,
  `directors` JSON NOT NULL,
  `writers` JSON NOT NULL,
  `actors` JSON NOT NULL,
  `plot` MEDIUMTEXT NOT NULL,
  `languages` JSON NOT NULL,
  `awards` JSON NOT NULL,
  `poster` VARCHAR(255) NOT NULL,
  `ratings` JSON NOT NULL
);

DROP TABLE IF EXISTS auth;
CREATE TABLE auth(
  `id` VARCHAR(50) NOT NULL PRIMARY KEY,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL
);

CREATE INDEX index_title ON movies (`title`);
CREATE INDEX index_email ON auth (`email`);

INSERT INTO `movies` 
VALUES 
  (
    '05f459fa-7bf2-449a-94f7-03f710b12150', 
    'Pinball', 2013, 7.3, 'Not Rated', 
    '10 Mar 2013', '7 min', '[\"Short\"]', 
    '[\"Suzan Pitt\"]', '[\"N/A\"]', 
    '[\"N/A\"]', 'A cinematic visualisation of George Antheil\'s 1952 revision of \"Ballet Mecanique\", painted and animated by Suzan Pitt.', 
    '[\"None\"]', '[\"N/A\"]', 'https://m.media-amazon.com/images/M/MV5BY2ViZmY1NDctMzUzOS00Y2I2LWJkYmEtOGQ1OGIwODRjN2NkXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_SX300.jpg', 
    '[{\"value\": \"7.3/10\", \"source\": \"Internet Movie Database\"}]'
  ), 
  (
    '0d2abe7b-29a6-4b0f-a9eb-0d40e19f525d', 
    '65', 2023, 5.4, 'PG-13', '10 Mar 2023', 
    '93 min', '[\"Action\", \"Adventure\", \"Drama\"]', 
    '[\"Scott Beck\", \"Bryan Woods\"]', 
    '[\"Scott Beck\", \"Bryan Woods\"]', 
    '[\"Adam Driver\", \"Ariana Greenblatt\", \"Chloe Coleman\"]', 
    'An astronaut crash lands on a mysterious planet only to discover he\'s not alone.', 
    '[\"English\"]', '[\"N/A\"]', 'https://m.media-amazon.com/images/M/MV5BYzFhM2M1MDUtNDhmNC00YzEzLThiMzctYWYxZTc0MGJhNWYyXkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_SX300.jpg', 
    '[{\"value\": \"5.4/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"35%\", \"source\": \"Rotten Tomatoes\"}, {\"value\": \"40/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    '19af4f79-fe1b-428e-9429-a8c3eb2b09e7', 
    'Man at Arms: Reforged Tomahawk Challenge (Revolutionary War vs. Assassin\'s Creed 3)', 
    2015, 0, 'N/A', '04 May 2015', 'N/A', 
    '[\"Short\"]', '[\"Andy Signore\"]', 
    '[\"N/A\"]', '[\"Illya Alekseyev\", \"John Mitchell\", \"Sam Salvati\", \"Lauren Schott\"]', 
    'N/A', '[\"N/A\"]', '[\"N/A\"]', 
    'N/A', '[]'
  ), 
  (
    '1aba4def-6524-419c-8461-49c876a239cc', 
    'A ma de meng zhong qing ren', 
    2013, 6.1, 'Not Rated', '27 Feb 2013', 
    '124 min', '[\"Comedy\", \"Romance\"]', 
    '[\"Toyoharu Kitamura\", \"Aozaru Shiao\"]', 
    '[\"Chen-hao Lin\", \"Garance Li-Wen Wang\"]', 
    '[\"Blue Cheng-Lung Lan\", \"Amber An\", \"Po-Chieh Wang\"]', 
    'The feel-good sleeper hit of 2013, Forever Love is the story about chasing dreams and following your heart. A bubbly aspiring actress and a charming screenwriter team up to shake up the movie sets during the swinging 60s, when Tai...', 
    '[\"Min Nan\", \"Mandarin\", \"English\"]', 
    '[\"3 wins & 2 nominations\"]', 
    'https://m.media-amazon.com/images/M/MV5BMjA4Mjg5MDc5MF5BMl5BanBnXkFtZTgwNjE3NDI3NTE@._V1_SX300.jpg', 
    '[{\"value\": \"6.1/10\", \"source\": \"Internet Movie Database\"}]'
  ), 
  (
    '1bb3c6f8-07df-436f-8816-d776842e147c', 
    'Baby Ruby', 2022, 4.8, 'N/A', '03 Feb 2023', 
    '93 min', '[\"Drama\", \"Horror\", \"Thriller\"]', 
    '[\"Bess Wohl\"]', '[\"Bess Wohl\"]', 
    '[\"Noémie Merlant\", \"Kit Harington\", \"Meredith Hagner\"]', 
    'The tightly scripted world of a vlogger and influencer unravels after she becomes a mother, in noted playwright Bess Wohl\'s feature debut.', 
    '[\"English\"]', '[\"N/A\"]', 'https://m.media-amazon.com/images/M/MV5BODQ1ZjY0NDktYmFiZi00NDlkLWJjNjUtMGJmNjIyN2E1Zjc2XkEyXkFqcGdeQXVyMTQzNTA5MzYz._V1_SX300.jpg', 
    '[{\"value\": \"4.8/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"64%\", \"source\": \"Rotten Tomatoes\"}, {\"value\": \"57/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    '1fe60197-a804-4c13-9893-e1dc9f9d5a11', 
    'Joyland', 2022, 7.7, 'N/A', '18 Nov 2022', 
    '126 min', '[\"Drama\"]', '[\"Saim Sadiq\"]', 
    '[\"Saim Sadiq\", \"Maggie Briggs\"]', 
    '[\"Ali Junejo\", \"Rasti Farooq\", \"Alina Khan\"]', 
    'The youngest son in a traditional Pakistani family takes a job as a backup dancer in a Bollywood-style burlesque and quickly becomes infatuated with the strong-willed trans woman who runs the show.', 
    '[\"Punjabi\", \"Urdu\"]', '[\"15 wins & 17 nominations\"]', 
    'https://m.media-amazon.com/images/M/MV5BMmYxYmJkYWQtNjZkZC00NTMwLTgxMjEtZDQxNmRlZGMyNmQ5XkEyXkFqcGdeQXVyMjQ0NzcxNjM@._V1_SX300.jpg', 
    '[{\"value\": \"7.7/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"97%\", \"source\": \"Rotten Tomatoes\"}, {\"value\": \"82/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    '21ce438b-c001-4958-8749-49cc331c6a6a', 
    'The Offering', 2022, 5.2, 'R', '13 Jan 2023', 
    '93 min', '[\"Horror\"]', '[\"Oliver Park\"]', 
    '[\"Hank Hoffman\", \"Jonathan Yunger\"]', 
    '[\"Nick Blood\", \"Emily Wiseman\", \"Paul Kaye\"]', 
    'A family struggling with loss find themselves at the mercy of an ancient demon trying to destroy them from the inside.', 
    '[\"English\"]', '[\"N/A\"]', 'https://m.media-amazon.com/images/M/MV5BNjFmODAwMmQtMGRhYi00ZDQzLTg4MzMtMTE0ZTQ1OGNlYzM3XkEyXkFqcGdeQXVyMTM0ODU0MTM1._V1_SX300.jpg', 
    '[{\"value\": \"5.2/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"76%\", \"source\": \"Rotten Tomatoes\"}, {\"value\": \"60/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    '2c12ba00-5204-473a-b02c-2b05e6a5d3f1', 
    'One True Loves', 2023, 5.3, 'PG-13', 
    '14 Apr 2023', '100 min', '[\"Comedy\", \"Drama\", \"Romance\"]', 
    '[\"Andy Fickman\"]', '[\"Taylor Jenkins Reid\", \"Alex J. Reid\"]', 
    '[\"Oceana Matsumoto\", \"Phillipa Soo\", \"Luke Bracey\"]', 
    'A woman is unexpectedly forced to choose between the husband she has long thought dead and the fiance who has finally brought her back to life.', 
    '[\"English\"]', '[\"N/A\"]', 'https://m.media-amazon.com/images/M/MV5BZjcxNTI5ZTQtZmU3Mi00ODNlLTk2ZWQtZTU5NzQ3MTMyZmI0XkEyXkFqcGdeQXVyMzQwMTY2Nzk@._V1_SX300.jpg', 
    '[{\"value\": \"5.3/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"35/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    '324ee531-a3a5-4387-a989-63beb3ff5dce', 
    'Pope', 2017, 9.5, 'N/A', '30 Mar 2017', 
    '55 min', '[\"Crime\", \"Drama\"]', 
    '[\"Dwight White\"]', '[\"Dwight White\"]', 
    '[\"Kevin L. Walker\", \"Noel Gugliemi\", \"Neil Brown Jr.\"]', 
    'Born and raised in the ghettos of Detroit, four young Detroit street kids look to provide a better life for what remains of their broken families, but they may have bitten off more than they can handle.', 
    '[\"English\"]', '[\"N/A\"]', 'https://m.media-amazon.com/images/M/MV5BYzllZGJjMWItOGQwZC00MjNjLWI0MjctODE3ZGUwZTBmMjVjXkEyXkFqcGdeQXVyMjQyOTkyNjI@._V1_SX300.jpg', 
    '[{\"value\": \"9.5/10\", \"source\": \"Internet Movie Database\"}]'
  ), 
  (
    '33f20448-f9e9-48b0-8ef6-0c1642ae1a56', 
    'Megan', 2018, 6.8, 'Not Rated', '31 Jul 2018', 
    '8 min', '[\"Short\", \"Horror\", \"Sci-Fi\"]', 
    '[\"Greg Strasz\"]', '[\"Giuseppe Mercadante\", \"Greg Strasz\", \"Jean de Meuron\"]', 
    '[\"Matilda Anna Ingrid Lutz\", \"Garret Sato\", \"Ralf Moeller\"]', 
    'When a young Scientist becomes entangled in a military mission to deliver the only antidote that will save mankind, she finds herself not only fighting for survival but also being confronted by demons from her past.', 
    '[\"English\"]', '[\"16 wins & 8 nominations\"]', 
    'https://m.media-amazon.com/images/M/MV5BNjEzYzE1NDUtYjc4Mi00NDliLWI3M2QtNGIxZDBjNmFkNGI1XkEyXkFqcGdeQXVyNjUxMjIxMTE@._V1_SX300.jpg', 
    '[{\"value\": \"6.8/10\", \"source\": \"Internet Movie Database\"}]'
  ), 
  (
    '3d903f28-a59a-4a5b-9cdb-656de8c276d4', 
    'Inside', 2021, 8.6, 'TV-MA', '30 May 2021', 
    '87 min', '[\"Comedy\", \"Drama\", \"Music\"]', 
    '[\"Bo Burnham\"]', '[\"Bo Burnham\"]', 
    '[\"Bo Burnham\"]', 'A musical comedy special shot and performed by Bo Burnham, alone, over the course of a very unusual year.', 
    '[\"English\"]', '[\"Won 3 Primetime Emmys\", \"10 wins & 14 nominations total\"]', 
    'https://m.media-amazon.com/images/M/MV5BMDE3MjcxNjEtODUzNi00NzdmLWFlMGMtMzhmMTg3NDdmM2IyXkEyXkFqcGdeQXVyNjYyMjE4NDY@._V1_SX300.jpg', 
    '[{\"value\": \"8.6/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"95%\", \"source\": \"Rotten Tomatoes\"}]'
  ), 
  (
    '40affe3c-ea83-4399-9dae-7c2ce8cfc288', 
    'Mamma', 1982, 5.3, 'N/A', '22 Sep 1982', 
    '91 min', '[\"Drama\"]', '[\"Suzanne Osten\"]', 
    '[\"Tove Ellefsen\", \"Suzanne Osten\"]', 
    '[\"Malin Ek\", \"Etienne Glaser\", \"Serge Giambernardini\"]', 
    'About a young film critic who dream of interviewing actor Jean Gabin and Jean-Louis Barrault and one day directing a movie.', 
    '[\"Swedish\"]', '[\"1 win & 1 nomination\"]', 
    'https://m.media-amazon.com/images/M/MV5BYWE5OTA4ZTEtYjI3ZS00NzRlLWFhN2YtNDYyZTgxOTAxMzg3XkEyXkFqcGdeQXVyNzQxNDExNTU@._V1_SX300.jpg', 
    '[{\"value\": \"5.3/10\", \"source\": \"Internet Movie Database\"}]'
  ), 
  (
    '4edd5c24-1c2e-4f44-86cf-61f89bb1ba06', 
    'The Super Mario Bros. Movie', 
    2023, 7.2, 'PG', '05 Apr 2023', '92 min', 
    '[\"Animation\", \"Adventure\", \"Comedy\"]', 
    '[\"Aaron Horvath\", \"Michael Jelenic\", \"Pierre Leduc\"]', 
    '[\"Matthew Fogel\"]', '[\"Chris Pratt\", \"Anya Taylor-Joy\", \"Charlie Day\"]', 
    'A plumber named Mario travels through an underground labyrinth with his brother, Luigi, trying to save a captured princess.', 
    '[\"English\"]', '[\"N/A\"]', 'https://m.media-amazon.com/images/M/MV5BOTJhNzlmNzctNTU5Yy00N2YwLThhMjQtZDM0YjEzN2Y0ZjNhXkEyXkFqcGdeQXVyMTEwMTQ4MzU5._V1_SX300.jpg', 
    '[{\"value\": \"7.2/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"59%\", \"source\": \"Rotten Tomatoes\"}, {\"value\": \"46/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    '5420ba80-3197-4f91-9f51-80f9e3fab135', 
    'Ant-Man and the Wasp: Quantumania', 
    2023, 6.1, 'PG-13', '17 Feb 2023', 
    '124 min', '[\"Action\", \"Adventure\", \"Comedy\"]', 
    '[\"Peyton Reed\"]', '[\"Jeff Loveness\", \"Stan Lee\", \"Larry Lieber\"]', 
    '[\"Paul Rudd\", \"Evangeline Lilly\", \"Michael Douglas\"]', 
    'Scott Lang and Hope Van Dyne are dragged into the Quantum Realm, along with Hope\'s parents and Scott\'s daughter Cassie. Together they must find a way to escape, but what secrets is Hope\'s mother hiding? And who is the mysterious K...', 
    '[\"English\"]', '[\"3 nominations\"]', 
    'https://m.media-amazon.com/images/M/MV5BODZhNzlmOGItMWUyYS00Y2Q5LWFlNzMtM2I2NDFkM2ZkYmE1XkEyXkFqcGdeQXVyMTU5OTA4NTIz._V1_SX300.jpg', 
    '[{\"value\": \"6.1/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"48/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    '54889958-eb6d-4a25-9c1c-c48f6765769a', 
    'The Royal Game', 1996, 0, 'N/A', 
    'N/A', '13 min', '[\"Animation\", \"Short\", \"Family\"]', 
    '[\"Sergey Antonov\"]', '[\"Mikhail Raev\", \"Aleksandr Timofeevskiy\"]', 
    '[\"N/A\"]', 'N/A', '[\"None\"]', 
    '[\"N/A\"]', 'https://m.media-amazon.com/images/M/MV5BYTVhMTY4NzMtNGUwYS00ZTc4LWJkMGQtYjRiZGI1NDA2ODFjXkEyXkFqcGdeQXVyNTAxMTUwNDQ@._V1_SX300.jpg', 
    '[]'
  ), 
  (
    '59b1a9a1-9920-42f1-8080-fdff69b15a1b', 
    'Mauricio Meirelles: Generating Chaos', 
    2020, 6.6, 'N/A', '16 Apr 2020', '63 min', 
    '[\"Comedy\"]', '[\"Diego Pignataro\"]', 
    '[\"Maurício Meirelles\"]', '[\"Maurício Meirelles\"]', 
    'He\'s mid-30s going on 79, with scathingly funny views on fatherhood, marriage and society. Let Maurício Meirelles give you a tour of his chaotic mind.', 
    '[\"Portuguese\"]', '[\"N/A\"]', 
    'https://m.media-amazon.com/images/M/MV5BZWJiMWVlOTctN2VjZS00MDA0LWIwNDEtMDE1NzIwNmY3M2I4XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg', 
    '[{\"value\": \"6.6/10\", \"source\": \"Internet Movie Database\"}]'
  ), 
  (
    '6fcf1e54-f4cf-4972-8f69-dcbd266ebd3e', 
    'Brady', 2013, 6.4, 'N/A', 'N/A', '7 min', 
    '[\"Short\", \"Drama\", \"Romance\"]', 
    '[\"John Heeg\"]', '[\"John Heeg\"]', 
    '[\"Melinda McColgan\", \"Chance Caeden\", \"Jonny Wexler\", \"Tiana Mahalah\"]', 
    'A single mother raising a wheelchair-bound son with severe cerebral palsy falls in love with the high school volunteer at the pool where the son does aquatic therapy.', 
    '[\"English\"]', '[\"N/A\"]', 'N/A', 
    '[{\"value\": \"6.4/10\", \"source\": \"Internet Movie Database\"}]'
  ), 
  (
    '7cb14f15-01d5-488b-a862-d10c2705e4f0', 
    'BlackBerry', 2023, 7.9, 'R', '12 May 2023', 
    '120 min', '[\"Biography\", \"Comedy\", \"Drama\"]', 
    '[\"Matt Johnson\"]', '[\"Matt Johnson\", \"Matthew Miller\", \"Jacquie McNish\"]', 
    '[\"Jay Baruchel\", \"Glenn Howerton\", \"Matt Johnson\"]', 
    'The story of the meteoric rise and catastrophic demise of the world\'s first smartphone.', 
    '[\"English\"]', '[\"1 win & 2 nominations\"]', 
    'https://m.media-amazon.com/images/M/MV5BMDNhZWU4NTQtYjk1NS00MTM1LTg3ODYtMzE0MjQ2YTI5MGM4XkEyXkFqcGdeQXVyMDc5ODIzMw@@._V1_SX300.jpg', 
    '[{\"value\": \"7.9/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"80/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    '832e1297-830c-41b2-a960-4412b77cf23a', 
    'Blueback', 2022, 5.8, 'PG', '01 Jan 2023', 
    '102 min', '[\"Drama\", \"Family\"]', 
    '[\"Robert Connolly\"]', '[\"Robert Connolly\", \"Tim Winton\"]', 
    '[\"Mia Wasikowska\", \"Albert Mwangi\", \"Ariel Donoghue\"]', 
    'Follows Abby, a child who befriends a magnificent wild blue groper while diving. When Abby realizes that the fish is under threat, she takes inspiration from her activist Mum, Dora, and takes on poachers to save her friend.', 
    '[\"English\"]', '[\"N/A\"]', 'https://m.media-amazon.com/images/M/MV5BMjc3ODlmNzgtYzRlMi00YmFhLTkyNWUtZmNmYTRlYzJhNGQ4XkEyXkFqcGdeQXVyMTAxNzQ1NzI@._V1_SX300.jpg', 
    '[{\"value\": \"5.8/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"72%\", \"source\": \"Rotten Tomatoes\"}, {\"value\": \"59/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    '852b76ed-98ba-4a75-a88b-dc646227da0c', 
    'Fast & Furious 6', 2013, 7, 'PG-13', 
    '24 May 2013', '130 min', '[\"Action\", \"Adventure\", \"Crime\"]', 
    '[\"Justin Lin\"]', '[\"Chris Morgan\", \"Gary Scott Thompson\"]', 
    '[\"Vin Diesel\", \"Paul Walker\", \"Dwayne Johnson\"]', 
    'Hobbs has Dominic and Brian reassemble their crew to take down a team of mercenaries: Dominic unexpectedly gets sidetracked with facing his presumed deceased girlfriend, Letty.', 
    '[\"English\", \"Spanish\", \"Russian\", \"Japanese\", \"Cantonese\", \"Dutch\", \"Danish\", \"Ukrainian\"]', 
    '[\"11 wins & 22 nominations\"]', 
    'https://m.media-amazon.com/images/M/MV5BMTM3NTg2NDQzOF5BMl5BanBnXkFtZTcwNjc2NzQzOQ@@._V1_SX300.jpg', 
    '[{\"value\": \"7.0/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"71%\", \"source\": \"Rotten Tomatoes\"}, {\"value\": \"61/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    '9ba486b6-16f4-4a45-9a27-0e9adc3a730d', 
    'Air', 2023, 7.5, 'R', '05 Apr 2023', 
    '111 min', '[\"Drama\", \"Sport\"]', 
    '[\"Ben Affleck\"]', '[\"Alex Convery\"]', 
    '[\"Matt Damon\", \"Jason Bateman\", \"Ben Affleck\"]', 
    'Follows the history of shoe salesman Sonny Vaccaro, and how he led Nike in its pursuit of the greatest athlete in the history of basketball, Michael Jordan.', 
    '[\"English\"]', '[\"1 win\"]', 
    'https://m.media-amazon.com/images/M/MV5BYmNlOTNlYjUtM2U3Yy00M2ZjLTkxZDQtN2NiNGZiZDI0ZjE3XkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_SX300.jpg', 
    '[{\"value\": \"7.5/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"73/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    'a64227f3-6d14-4f18-89ec-c88ff1993e97', 
    'One True Thing', 1998, 6.9, 'R', 
    '18 Sep 1998', '127 min', '[\"Drama\"]', 
    '[\"Carl Franklin\"]', '[\"Anna Quindlen\", \"Karen Croner\"]', 
    '[\"Meryl Streep\", \"Renée Zellweger\", \"William Hurt\"]', 
    'A career woman reassesses her parents\' lives after she is forced to care for her cancer-stricken mother.', 
    '[\"English\", \"Portuguese\"]', 
    '[\"Nominated for 1 Oscar\", \"8 nominations total\"]', 
    'https://m.media-amazon.com/images/M/MV5BZGI0NmIwOTUtYzk1NS00ODAzLWFiYzEtY2ViYmVmYmE5MWU1XkEyXkFqcGdeQXVyMTQ3Njg3MQ@@._V1_SX300.jpg', 
    '[{\"value\": \"6.9/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"88%\", \"source\": \"Rotten Tomatoes\"}, {\"value\": \"63/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    'a8543c6f-a1ef-45aa-94a0-d292f653bea0', 
    'Scream VI', 2023, 6.6, 'R', '10 Mar 2023', 
    '122 min', '[\"Horror\", \"Mystery\", \"Thriller\"]', 
    '[\"Matt Bettinelli-Olpin\", \"Tyler Gillett\"]', 
    '[\"James Vanderbilt\", \"Guy Busick\", \"Kevin Williamson\"]', 
    '[\"Courteney Cox\", \"Melissa Barrera\", \"Jenna Ortega\"]', 
    'In the next installment, the survivors of the Ghostface killings leave Woodsboro behind and start a fresh chapter in New York City.', 
    '[\"English\"]', '[\"2 wins & 1 nomination\"]', 
    'https://m.media-amazon.com/images/M/MV5BODBjM2M4YTQtNmJlMS00MGU2LWI4ZGYtZTA1MzdmZDAyMjFkXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_SX300.jpg', 
    '[{\"value\": \"6.6/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"76%\", \"source\": \"Rotten Tomatoes\"}, {\"value\": \"61/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    'ad379d7e-120d-4588-bbda-76c3d9de1b59', 
    'Sweetwater', 2013, 6.2, 'R', '11 Oct 2013', 
    '95 min', '[\"Thriller\", \"Western\"]', 
    '[\"Logan Miller\", \"Noah Miller\"]', 
    '[\"Logan Miller\", \"Noah Miller\", \"Andrew McKenzie\"]', 
    '[\"Ed Harris\", \"January Jones\", \"Jason Isaacs\"]', 
    'In the late 1800s, a fanatical religious leader, a renegade Sheriff, and a former prostitute collide in a blood triangle on the rugged plains of the New Mexico Territory.', 
    '[\"English\"]', '[\"1 win & 1 nomination\"]', 
    'https://m.media-amazon.com/images/M/MV5BMjM1NzUyNjE0MF5BMl5BanBnXkFtZTgwNTIwMzkyMDE@._V1_SX300.jpg', 
    '[{\"value\": \"6.2/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"27%\", \"source\": \"Rotten Tomatoes\"}, {\"value\": \"38/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    'b7955714-8954-4aa7-846e-276aa46ef201', 
    'Renfield', 2023, 6.4, 'R', '14 Apr 2023', 
    '93 min', '[\"Comedy\", \"Fantasy\", \"Horror\"]', 
    '[\"Chris McKay\"]', '[\"Ryan Ridley\", \"Robert Kirkman\", \"Ava Tramer\"]', 
    '[\"Nicholas Hoult\", \"Nicolas Cage\", \"Awkwafina\"]', 
    'Renfield, Dracula\'s henchman and inmate at the lunatic asylum for decades, longs for a life away from the Count, his various demands, and all of the bloodshed that comes with them.', 
    '[\"English\", \"French\"]', '[\"N/A\"]', 
    'https://m.media-amazon.com/images/M/MV5BNDIwYjVjMDMtOGYxMy00ZTRiLWE0YzktMjIwYmNhOGE4NGQ4XkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_SX300.jpg', 
    '[{\"value\": \"6.4/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"58%\", \"source\": \"Rotten Tomatoes\"}, {\"value\": \"53/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    'b9c85af0-2dc9-4808-a52b-9e06b5fe7f9e', 
    'Love Again', 2023, 6, 'PG-13', '05 May 2023', 
    '104 min', '[\"Comedy\", \"Drama\", \"Romance\"]', 
    '[\"Jim Strouse\"]', '[\"Jim Strouse\", \"Sofie Cramer\", \"Andrea Willson\"]', 
    '[\"Priyanka Chopra Jonas\", \"Sam Heughan\", \"Céline Dion\"]', 
    'A young woman tries to ease the pain of her fiancé\'s death by sending romantic texts to his old cell phone number, and forms a connection with the man the number has been reassigned to.', 
    '[\"English\"]', '[\"N/A\"]', 'https://m.media-amazon.com/images/M/MV5BNjQwZDIyNjAtZGQxMC00OTUwLWFiOWYtNzg2NDc5Mjc1MDQ5XkEyXkFqcGdeQXVyMTAxNzQ1NzI@._V1_SX300.jpg', 
    '[{\"value\": \"6.0/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"23%\", \"source\": \"Rotten Tomatoes\"}, {\"value\": \"33/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    'ba0b2abc-de3d-4486-811e-0764deadeade', 
    'Hunters', 2016, 3.2, 'N/A', '24 Jun 2016', 
    '96 min', '[\"Horror\"]', '[\"Adam Ahlbrandt\"]', 
    '[\"Adam Ahlbrandt\"]', '[\"Linnea Quigley\", \"J.D. Brown\", \"Adam Ahlbrandt\"]', 
    'In 1987, a group of film students go scout an abandoned resort in the Pennsylvania wilderness, becoming real victims in another film.', 
    '[\"English\"]', '[\"N/A\"]', 'https://m.media-amazon.com/images/M/MV5BNDRjYjAyZDEtMjI0Ny00YzQxLWE5ODgtNGRiZTQxZjM3ZjcwXkEyXkFqcGdeQXVyNjY1MjQwMjg@._V1_SX300.jpg', 
    '[{\"value\": \"3.2/10\", \"source\": \"Internet Movie Database\"}]'
  ), 
  (
    'c1be361d-2753-4884-a3e1-628507e429c8', 
    'A Lot of Nothing', 2022, 4.4, 'N/A', 
    '03 Feb 2023', '104 min', '[\"Comedy\", \"Drama\", \"Thriller\"]', 
    '[\"Mo McRae\"]', '[\"Sarah Kelly Kaplan\", \"Mo McRae\"]', 
    '[\"Sheila Carrasco\", \"Lex Scott Davis\", \"Justin Hartley\"]', 
    'James and Vanessa are ostensibly the perfect married couple; beautiful, successful, and smart. Their lives spiral out of control when they decide to seek justice against a neighbor they saw commit a crime on the evening news.', 
    '[\"English\"]', '[\"5 nominations\"]', 
    'https://m.media-amazon.com/images/M/MV5BZmRhZGU3MGYtY2IxMC00ODhkLTg0MTAtZjM2OGU2MjVhZmUxXkEyXkFqcGdeQXVyMzUyNTY2OTc@._V1_SX300.jpg', 
    '[{\"value\": \"4.4/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"48%\", \"source\": \"Rotten Tomatoes\"}, {\"value\": \"55/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    'cd29f52e-1334-466a-8f17-e1b52138c08e', 
    'The Old Way', 2023, 5.4, 'R', '13 Jan 2023', 
    '95 min', '[\"Action\", \"Drama\", \"Western\"]', 
    '[\"Brett Donowho\"]', '[\"Carl W. Lucas\"]', 
    '[\"Phillip Aguirre\", \"Ryan Kiera Armstrong\", \"Clint Howard\"]', 
    'An old gunslinger and his daughter must face the consequences of his past, when the son of a man he murdered years ago arrives to take his revenge.', 
    '[\"English\"]', '[\"N/A\"]', 'https://m.media-amazon.com/images/M/MV5BMmNiODQ2MmQtOTdmNi00Y2M0LTkyYWUtMmQ2YmFiZmZmMzNkXkEyXkFqcGdeQXVyMjAwNzA4MDE@._V1_SX300.jpg', 
    '[{\"value\": \"5.4/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"43/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    'dc062abc-7d8f-4eb3-9291-80b1b449bdb5', 
    'House Party', 1990, 6.5, 'R', '09 Mar 1990', 
    '100 min', '[\"Comedy\", \"Music\", \"Romance\"]', 
    '[\"Reginald Hudlin\"]', '[\"Reginald Hudlin\"]', 
    '[\"Christopher Reid\", \"Robin Harris\", \"Christopher Martin\"]', 
    'Kid decides to go to his friend Play\'s house party, but neither of them can predict what\'s in store for them on what could be the wildest night of their lives.', 
    '[\"English\"]', '[\"3 wins & 10 nominations\"]', 
    'https://m.media-amazon.com/images/M/MV5BZTBkY2QyOTQtMTM3Ni00NmYwLTlkODYtYmRjZjE0NjQyZTBhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg', 
    '[{\"value\": \"6.5/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"94%\", \"source\": \"Rotten Tomatoes\"}, {\"value\": \"76/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    'df3aa2bf-ff89-4990-b002-123c5127a50d', 
    'Creed III', 2023, 6.9, 'PG-13', '03 Mar 2023', 
    '116 min', '[\"Drama\", \"Sport\"]', 
    '[\"Michael B. Jordan\"]', '[\"Keenan Coogler\", \"Zach Baylin\", \"Ryan Coogler\"]', 
    '[\"Michael B. Jordan\", \"Tessa Thompson\", \"Jonathan Majors\"]', 
    'Adonis has been thriving in both his career and family life, but when a childhood friend and former boxing prodigy resurfaces, the face-off is more than just a fight.', 
    '[\"English\", \"Spanish\", \"American Sign \"]', 
    '[\"1 nomination\"]', 'https://m.media-amazon.com/images/M/MV5BYWY1ZDY4MmQtYjhiYS00N2QwLTk1NzgtOWI2YzUwZThjNDYwXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_SX300.jpg', 
    '[{\"value\": \"6.9/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"88%\", \"source\": \"Rotten Tomatoes\"}, {\"value\": \"73/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    'e5d79f84-3c73-4895-a87b-b18b02dc5d5a', 
    'Paint', 2023, 5, 'PG-13', '07 Apr 2023', 
    '96 min', '[\"Comedy\", \"Drama\"]', 
    '[\"Brit McAdams\"]', '[\"Brit McAdams\"]', 
    '[\"Owen Wilson\", \"Elisabeth Henry\", \"Paul Kosopod\"]', 
    'Carl Nargle, Vermont\'s #1 public television painter, is convinced he has it all: a signature perm, custom van, and fans hanging on his every stroke - until a younger, better artist steals everything (and everyone) Carl loves.', 
    '[\"English\"]', '[\"N/A\"]', 'https://m.media-amazon.com/images/M/MV5BMWFmOTU2ZjctN2VhMS00Yzg4LWIyOGEtMTgwZTdjYTMyZjNkXkEyXkFqcGdeQXVyMzQwMTY2Nzk@._V1_SX300.jpg', 
    '[{\"value\": \"5.0/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"45/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    'e7106aa8-329f-4f83-9021-428d6ff597e9', 
    'Killer Elite', 2011, 6.4, 'R', '23 Sep 2011', 
    '116 min', '[\"Action\", \"Crime\", \"Thriller\"]', 
    '[\"Gary McKendry\"]', '[\"Matt Sherring\", \"Ranulph Fiennes\"]', 
    '[\"Jason Statham\", \"Clive Owen\", \"Robert De Niro\"]', 
    'When his mentor is taken captive by a disgraced Arab sheik, a killer-for-hire is forced into action. His mission: kill three members of Britain\'s elite Special Air Service responsible for his sons\' deaths.', 
    '[\"English\", \"Arabic\", \"French\", \"Spanish\"]', 
    '[\"2 wins & 8 nominations\"]', 
    'https://m.media-amazon.com/images/M/MV5BMTc4MDAxMjAzNV5BMl5BanBnXkFtZTcwNTY3ODg3NQ@@._V1_SX300.jpg', 
    '[{\"value\": \"6.4/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"28%\", \"source\": \"Rotten Tomatoes\"}, {\"value\": \"44/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    'f29be98e-197a-4829-85da-dfa9e385860b', 
    'M3GAN', 2022, 6.4, 'PG-13', '06 Jan 2023', 
    '102 min', '[\"Horror\", \"Sci-Fi\", \"Thriller\"]', 
    '[\"Gerard Johnstone\"]', '[\"Akela Cooper\", \"James Wan\"]', 
    '[\"Allison Williams\", \"Violet McGraw\", \"Ronny Chieng\"]', 
    'A robotics engineer at a toy company builds a life-like doll that begins to take on a life of its own.', 
    '[\"English\"]', '[\"1 nomination\"]', 
    'https://m.media-amazon.com/images/M/MV5BMDk4MTdhYzEtODk3OS00ZDBjLWFhNTQtMDI2ODdjNzQzZTA3XkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_SX300.jpg', 
    '[{\"value\": \"6.4/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"93%\", \"source\": \"Rotten Tomatoes\"}, {\"value\": \"72/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    'f93e1458-5ce2-42e4-a9f3-d4dd3df41408', 
    'On Our Way', 2021, 0, 'N/A', '19 May 2023', 
    '91 min', '[\"Drama\", \"Romance\"]', 
    '[\"Sophie Lane Curtis\"]', '[\"Sophie Lane Curtis\"]', 
    '[\"Jordana Brewster\", \"James Badge Dale\", \"Vanessa Redgrave\"]', 
    'A troubled young filmmaker battles a dark voice inside his head; can a mysterious muse illuminate his way out of it?', 
    '[\"N/A\"]', '[\"N/A\"]', 'https://m.media-amazon.com/images/M/MV5BMzIwNWMxYjYtNzU4ZC00MWY5LThmMDItMWZjZTcxYTE0NGYzXkEyXkFqcGdeQXVyMTUzNTA5NjM3._V1_SX300.jpg', 
    '[]'
  ), 
  (
    'f9f3f85b-2a06-42d7-818e-27662a09dd5f', 
    'Hypnotic', 2021, 5.3, 'TV-14', '27 Oct 2021', 
    '88 min', '[\"Mystery\", \"Thriller\"]', 
    '[\"Matt Angel\", \"Suzanne Coote\"]', 
    '[\"Richard D\'Ovidio\"]', '[\"Kate Siegel\", \"Jason O\'Mara\", \"Dulé Hill\"]', 
    'A young woman seeking self-improvement enlists the help of a renowned hypnotherapist. But after a handful of intense sessions, she discovers unexpected and deadly consequences.', 
    '[\"English\"]', '[\"N/A\"]', 'https://m.media-amazon.com/images/M/MV5BYmQxNzI0YzAtMDE3YS00YzM5LWFjNTMtYzEzMDI4MGE3MDM4XkEyXkFqcGdeQXVyNTYxMjExMDk@._V1_SX300.jpg', 
    '[{\"value\": \"5.3/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"24%\", \"source\": \"Rotten Tomatoes\"}, {\"value\": \"32/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    'fad743f5-15ac-4720-8cf1-4a7ba191bdc9', 
    'Book Club', 2018, 6.1, 'PG-13', '18 May 2018', 
    '104 min', '[\"Comedy\", \"Drama\", \"Romance\"]', 
    '[\"Bill Holderman\"]', '[\"Bill Holderman\", \"Erin Simms\"]', 
    '[\"Diane Keaton\", \"Jane Fonda\", \"Candice Bergen\"]', 
    'Four lifelong friends have their lives forever changed after reading 50 Shades of Grey in their monthly book club.', 
    '[\"English\", \"Hungarian\", \"Spanish\", \"French\"]', 
    '[\"2 wins & 3 nominations\"]', 
    'https://m.media-amazon.com/images/M/MV5BMTc0MDY2MDI3Ml5BMl5BanBnXkFtZTgwNjU2MzIyNTM@._V1_SX300.jpg', 
    '[{\"value\": \"6.1/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"54%\", \"source\": \"Rotten Tomatoes\"}, {\"value\": \"53/100\", \"source\": \"Metacritic\"}]'
  ), 
  (
    'fbce0fa2-551f-4651-9813-c25a7630bd73', 
    'Fear', 1996, 6.2, 'R', '12 Apr 1996', 
    '97 min', '[\"Drama\", \"Thriller\"]', 
    '[\"James Foley\"]', '[\"Christopher Crowe\"]', 
    '[\"Mark Wahlberg\", \"Reese Witherspoon\", \"William Petersen\"]', 
    'When Nicole met David; handsome, charming, affectionate, he was everything. It seemed perfect, but soon she sees that David has a darker side. And his adoration turns to obsession, their dream into a nightmare, and her love into f...', 
    '[\"English\"]', '[\"1 win & 2 nominations\"]', 
    'https://m.media-amazon.com/images/M/MV5BZTM4ZmJmMTQtMWUxOS00MjQxLTllNmQtNzI4YWVhYzZlNTRkXkEyXkFqcGdeQXVyNjU0NTI0Nw@@._V1_SX300.jpg', 
    '[{\"value\": \"6.2/10\", \"source\": \"Internet Movie Database\"}, {\"value\": \"46%\", \"source\": \"Rotten Tomatoes\"}, {\"value\": \"51/100\", \"source\": \"Metacritic\"}]'
  );

INSERT INTO auth VALUES('9076156f-c878-430b-b4c8-56afb52fa9d5', 'admin@videoclub.com', '$2b$10$OVjDqqUpueOb28bIFvJhFuIcepotGbIt8hBfMm968L8cdK9xOo7xe');
