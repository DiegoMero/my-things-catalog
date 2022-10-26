require './app'

@list_options = 'Please choose an option by enterin a number:
1 - List all books
2 - List all music albums
3 - List all movies
4 - List all genres
5 - List all labels
6 - List all authors
7 - List all sources
8 - Add a book
9 - Add a music album
10 - Add a movie
11 - Add a game
12 - Exit'

def main
  app = App.new
  app.load_data
  loop do
    puts @list_options
    option_selected = gets.chomp
    case option_selected
    when '1'
      app.books_list
    when '5'
      app.labels_list
    when '8'
      app.add_book
    when '12'
      app.save_data
      exit
    else
      puts 'Bola'
    end
  end
end

main
