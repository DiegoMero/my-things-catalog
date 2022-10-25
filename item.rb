require 'securerandom'

class Item
  attr_accessor :publish_date

  def initialize(publish_date, archived: false)
    @id = SecureRandom.random_number(1..100)
    @publish_date = publish_date
    @archived = archived
  end

  def genre(genre)
    @genre = genre
  end

  def author(author)
    @author = author
  end

  def source(source)
    @source = source
  end

  def label(label)
    @label = label
  end

  def can_be_archived?; end

  def move_to_archive; end
end
