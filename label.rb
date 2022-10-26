require 'securerandom'
require_relative './item'
require './book'
require 'json'

class Label
  attr_accessor :title, :color, :items

  def initialize(title, color)
    @id = SecureRandom.random_number(1..100)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items.push(item)
    item.label = self
  end
end

# ruby = [0, 's', :foo]
# json = JSON.generate(ruby)

# File.write('data/books.json', json)
