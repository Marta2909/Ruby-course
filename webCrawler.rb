require 'mechanize' # załadowanie biblioteki mechanize
require 'csv'

class Movie < Struct.new(:title, :year, :rating, :director); end
movies = []

agent = Mechanize.new #przeglądarka przeszukująca stronę
main_page = agent.get 'http://imdb.com' #strona główna, która będzie przeszukiwana
list_page = main_page.link_with(text: "Top Rated Movies").click #kliknięcie w link z tabelą filmów
rows = list_page.root.css(".lister-list tr") #wysupłanie wierszy z tabeli filmów za pomocą selektora CSS

rows.take(7).each do |row|
  title = row.at_css(".titleColumn a").text.strip
  rating = row.at_css(".ratingColumn strong").text.strip

  movie_page = list_page.link_with(text: "#{title}").click
  year = movie_page.root.at_css("#titleYear a").text.strip
  director = movie_page.root.at_css("span[itemprop = director] a span").text.strip

  movie = Movie.new(title, year, rating, director)
  movies << movie
end

CSV.open("top7.csv","w",col_sep: ";") do |csv|
  csv << ["Tytuł", "Rok", "Ocena", "Reżyser"]
  movies.each do |movie|
    csv << [movie.title, movie.year, movie.rating, movie.director]
  end
end
