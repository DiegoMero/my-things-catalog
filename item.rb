require 'securerandom'
require 'date'

class Item
  attr_accessor :publish_date, :archived

  def initialize(publish_date, archived: false)
    @id = SecureRandom.random_number(1..100)
    @publish_date = Date.parse(publish_date)
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
    label.items.push(self) unless label.items.include?(self)
  end

  def can_be_archived?
    date_to_check = Date.parse("#{Date.today.year - 10}-#{Date.today.mon}-#{Date.today.mday}")
    @publish_date < date_to_check
  end

  def move_to_archive
    @archived = true if can_be_archived? == true
  end
end
