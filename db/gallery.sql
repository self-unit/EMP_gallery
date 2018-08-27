DROP TABLE IF EXISTS exhibits;
DROP TABLE IF EXISTS artists;
-----------------------------
CREATE TABLE artists
(
  id SERIAL8 primary key,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255),
  bio TEXT NOT NULL
);

CREATE TABLE exhibits
(
  id SERIAL8 primary key,
  artist_id INT8 references artists(id) ON DELETE CASCADE,
  title VARCHAR(255) NOT NULL,
  category VARCHAR(255) NOT NULL,
  date_made DATE,
  link VARCHAR(255)
);
