DROP TABLE IF EXISTS exhibits;
DROP TABLE IF EXISTS artists;
-----------------------------
CREATE TABLE artists
(
id SERIAL8 primary key,
name VARCHAR(255)
);

CREATE TABLE exhibits
(
id SERIAL8 primary key,
artist_id INT8 references artists(id),
title VARCHAR(255),
category VARCHAR(255)
);
