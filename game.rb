require_relative './item'
require 'date'

class Game < Item
  def initialize(multiplayer, last_played_at, publish_date, archived: false)
    super(publish_date, archived: archived)
    @multiplayer = multiplayer
    @last_played_at = Date.parse(last_played_at)
  end

  def can_be_archived?
    two_years_old_date = Date.parse("#{Date.today.year - 2}-#{Date.today.mon}-#{Date.today.mday}")
    super && last_played_at < two_years_old_date
  end
end
