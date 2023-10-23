use codeup_test_db;

    SELECT name FROM albums WHERE release_date > 1991;
    DELETE FROM albums WHERE release_date > 1991;

    SELECT name FROM albums WHERE genre = 'Disco';
    DELETE FROM albums WHERE genre = 'Disco';

    SELECT name FROM albums WHERE name = 'Whitney Houston';
    DELETE FROM albums WHERE name = 'Whitney Houston';