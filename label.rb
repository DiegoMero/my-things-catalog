require 'securerandom'
require './item'

class Label
  def initialize(title, color)
    @id = SecureRandom.random_number(1..100)
    @title = title
    @color = color
    @items = []
  end
end
