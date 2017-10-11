USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id              INT UNSIGNED      NOT NULL AUTO_INCREMENT,
    artist          VARCHAR(150)      NOT NULL,
    name            VARCHAR(150)      NOT NULL,
    release_date    INT UNSIGNED      NOT NULL,
    sales           FLOAT             NOT NULL,
    genre           VARCHAR (150)     NOT NULL,
    PRIMARY KEY (id)
);