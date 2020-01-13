require 'yaml'

def directors_database
	rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
  pp rot13
end

def print_first_directors_movie_titles(nds)
  count = 0
  cur_dir_movies = nds[0][:movies]
  while count < cur_dir_movies.length do
    puts [count]
    count +=1
  end
end