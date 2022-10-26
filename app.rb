require './book'
require './label'

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
    @labels.each_with_index { |label, index| puts "Label #{index + 1}) Title: #{label.title}" }
  end
end
