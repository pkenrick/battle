class Game

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def attack
    player_2.suffer_attack
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def switch_turn
    @players.reverse!
  end

end
