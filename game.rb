class Game
  def initialize(multiplayer, last_played_at)
    @multiplayer = multiplayer
    @last_played_at = Date.parse(last_played_at)
  end
end
