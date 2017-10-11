USE codeup_test_db;

SELECT 'This is the name of all albums by Pink Floyd' AS '';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'This is the year Sgt. Pepper''s Lonely Hearts Club Band was released' AS '';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'This is the genre for Nevermind' AS '';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'All these albums were released in the 1990s' AS '';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'All these albums had less than 20 million certified sales' AS '';
SELECT name FROM albums WHERE sales < 20;

SELECT 'These are all the albums with a genre of Rock' AS '';
SELECT name FROM albums where genre LIKE '%Rock%';