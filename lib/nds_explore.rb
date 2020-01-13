$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  pp directors_database
end

# def print_first_directors_movie_titles
#   count = 0
#   cur_dir_movies = directors_database[0][:movies]
#   while count < cur_dir_movies.length do
#     puts "#{cur_dir_movies[count][:title]}"
#     count +=1
#   end

def print_first_directors_movie_titles
  directors_database[0][:movies].each { |movie| puts movie[:title] }
end
