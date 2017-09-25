INSERT INTO series (id, title, author_id, subgenre_id) VALUES (1, "Harry Potter", 1, 1), (2, "Second Series", 2, 2);

INSERT INTO subgenres (id, name) VALUES (1, "fantasy"), (2, "magic");

INSERT INTO authors (id, name) VALUES (1, "JK Rowling"), (2, "Second Author");

INSERT INTO books (id, title, year, series_id) VALUES (1, "The Philosopher's Stone", 1996, 1), (2, "The Chamber of Secrets", 1998, 1), (3, "Prisoner of Azkaban", 2000, 1), (4, "Goblet of Fire", 2002, 2), (5, "Order of the Phoenix", 2003, 2), (6, "Half Blood Prince", 2005, 2);

INSERT INTO characters (id, name, motto, species, author_id, series_id) VALUES (1, "Harry Potter", "good over evil", "wizard", 1, 1), (2, "Hermione Granger", "school", "mud blood witch", 1, 1), (3, "Ron Weasley", "motto", "wizard", 1, 1), (4, "Albus Dumbledore", "hogwarts", "headmaster wizard", 1, 1);

INSERT INTO characters (id, name, motto, species, author_id, series_id) VALUES (5, "Severus Snape", "motto one", "wizard", 2, 2), (6, "Hagrid", "motto two", "half giant", 2, 2), (7, "Draco Malfoy", "motto three", "wizard", 2, 2), (8, "Ginnie Weasley", "motto four", "witch", 2, 2);

INSERT INTO character_books (id, book_id, character_id) VALUES (1, 1, 1), (2, 1, 2), (3, 1, 3), (4, 1, 4), (5, 1, 5), (6, 1, 6), (7, 2, 1), (8, 2, 2);

INSERT INTO character_books (id, book_id, character_id) VALUES (9, 2, 3), (10, 2, 4), (11, 2, 5), (12, 2, 6), (13, 3, 1), (14, 3, 2), (15, 3, 3), (16, 3, 4);
