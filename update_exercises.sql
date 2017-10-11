USE codeup_test_db;


-- Increasing sales by ten-fold in the entire table
SELECT 'All albums in your table:' as '';
SELECT * FROM albums;
UPDATE albums
SET sales = 10 * sales;
SELECT 'All sales in your table after multiplied by 10:' as '';
SELECT sales FROM albums;


-- Changing all albums from before 1980s to the 1800s by subtracting by 100
SELECT 'All albums released before 1980' as '';
SELECT name FROM albums WHERE release_date < 1980;
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;
SELECT 'All dates before 1980 after subtracting 100' as '';
SELECT release_date FROM albums WHERE release_date < 1900;


-- Changing Michael Jackson to Peter Jackson
SELECT 'All albums by Michael Jackson' as '';
SELECT name FROM albums WHERE artist = "Michael Jackson";
UPDATE albums
SET artist = "Peter Jackson"
WHERE artist = "Michael Jackson";
SELECT 'All the Peter Jacksons' as '';
SELECT artist FROM albums WHERE artist = "Peter Jackson";