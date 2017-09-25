def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books INNER JOIN series WHERE books.series_id = 1 GROUP BY books.title ORDER BY books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY LENGTH(motto) DESC LIMIT 1;"
end

def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(DISTINCT character_books.character_id) FROM characters INNER JOIN character_books WHERE character_books.character_id = characters.id GROUP BY characters.species ORDER BY COUNT(character_books.id) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors, subgenres INNER JOIN series WHERE series.author_id = authors.id AND series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series INNER JOIN characters WHERE series.id = characters.series_id AND characters.species = 'human' GROUP BY series.title ORDER BY COUNT(characters.id) DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(character_books.character_id) as NumberBooks FROM characters INNER JOIN character_books WHERE characters.id = character_books.character_id GROUP BY characters.name ORDER BY NumberBooks DESC;"
  # "SELECT characters.name, SUM(CASE WHEN characters.id = character_books.character_id THEN 1 ELSE 0 END) as NumberBooks FROM characters INNER JOIN character_books GROUP BY characters.name ORDER BY NumberBooks DESC;"
end
