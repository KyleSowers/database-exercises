USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(255) NOT NULL,
                        name  VARCHAR(255) NOT NULL,
                        release_date INT (4) NOT NULL,
                        sales DECIMAL(4, 1)  NOT NULL,
                        genre VARCHAR(255) DEFAULT 'NONE',
                        PRIMARY KEY (id)
);

