USE codeup_test_db;

SELECT 'These are albums released after 1991' as '';
DELETE FROM albums WHERE release_date > 1991;

SELECT 'These are albums with the genre disco' as '';
DELETE FROM albums WHERE genre = "disco";

SELECT 'These are albums by Whitney Houston' as '';
DELETE FROM albums WHERE artist = "Whitney Houston";

