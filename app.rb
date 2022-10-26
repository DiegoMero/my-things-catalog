require './book'
require './label'
require 'json'

class App
  def initialize
    @books = []
    @labels = []
  end

  def add_book
    print 'Publisher: '
    publisher = gets.chomp
    print 'Cover state: '
    cover_state = gets.chomp
    print 'Publish date: '
    publish_date = gets.chomp
    print 'Label title: '
    title = gets.chomp
    print 'Label color: '
    color = gets.chomp
    book = Book.new(publisher, cover_state, publish_date)
    label = Label.new(title, color)
    puts 'Book created successfully'
    @labels.push(label)
    @books.push(book)
  end

  def books_list
    @books.each_with_index do |bk, i|
      puts "Book #{i + 1}) Publisher: #{bk.publisher}, Cover State: #{bk.cover_state}, Publish Date: #{bk.publish_date}"
    end
  end

  def labels_list
    @labels.each_with_index { |label, index| puts "Label #{index + 1}) Title: #{label.title}, Color: #{label.color}" }
  end

  def save_data
    @books = @books.map do |book|
      { publisher: book.publisher, cover_state: book.cover_state, publish_date: book.publish_date }
    end
    @books = JSON.generate(@books)
    File.write('data/books.json', @books)

    @labels = @labels.map { |label| { title: label.title, color: label.color } }
    @labels = JSON.generate(@labels)
    File.write('data/labels.json', @labels)
  end

  def load_data
    book_data = File.open('data/books.json')
    book_data = book_data.read
    book_data = JSON.parse(book_data)
    book_data.map { |book| @books.push(Book.new(book['publisher'], book['cover_state'], book['publish_date'])) }

    label_data = File.open('data/labels.json')
    label_data = label_data.read
    label_data = JSON.parse(label_data)
    label_data.map { |label| @labels.push(Label.new(label['title'], label['color'])) }
  end
end
