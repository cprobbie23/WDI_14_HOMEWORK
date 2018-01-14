CREARE DATABASE movie_db;

CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  Title VARCHAR(255),
  imdbID VARCHAR(255),
  Year VARCHAR(4),
  Genre VARCHAR(255),
  Released VARCHAR(255),
  Runtime VARCHAR(255),
  Director VARCHAR(255),
  Actors VARCHAR(255),
  Language VARCHAR(255),
  Description VARCHAR(1023),
  imdbRating VARCHAR(10),
  Poster VARCHAR(400)
);

INSERT INTO movies (
  Title, imdbID, Year, Genre, Released, Runtime, Director, Actors, Language, Description, imdbRating, Poster) 
VALUES ('@@result_hash["Title"]', '@@result_hash["imdbID"]', '@@result_hash["Year"]', '@@result_hash["Genre"]', '@@result_hash["Released"]',
'@@result_hash["Runtime"]', '@@result_hash["Director"]', '@@result_hash["Actors"]', '@@result_hash["Language"]',
'@@result_hash["Descripton"]', '@@result_hash["imdbRating"]', '@@result_hash["Poster"]');

INSERT INTO movies (
  title, imdbID, year, genre, released, duration, director, actors, language, description, rating_source, rating_value, image_url) 
VALUES ('ttt', 'tt000', '1999', 'action', '1-1-1999',
'120min', 'jame', 'mario', 'English',
'ddddd', 'imdb', '6.6', 'poster');