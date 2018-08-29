DROP TABLE IF EXISTS exhibits;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS artists;
-----------------------------
CREATE TABLE artists
(
  id SERIAL4 primary key,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255),
  bio TEXT NOT NULL
);

CREATE TABLE categories
(
  id SERIAL4 primary key,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE exhibits
(
  id SERIAL4 primary key,
  artist_id INT4 references artists(id) ON DELETE CASCADE,
  title VARCHAR(255) NOT NULL,
  category_id INT4 references categories(id) ON DELETE CASCADE,
  date_made DATE,
  link VARCHAR(255)
);
