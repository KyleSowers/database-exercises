USE codeup_test_db;

    SELECT * FROM albums WHERE artist = 'Pink Floyd';

    SELECT release_date FROM albums WHERE name = "Sgt. Pepper\'s Lonely Hearts Club Band";

    SELECT genre FROM albums WHERE name = '21';

    SELECT release_date FROM albums WHERE release_date > 1989 and release_date < 2000;

    SELECT sales FROM albums WHERE sales < 20.0;

    SELECT name FROM albums WHERE genre = 'Rock';
--     Different string values



