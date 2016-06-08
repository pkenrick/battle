class Player

  DEFAULT_HIT_POINTS = 60

  attr_reader :player_name, :hit_points

  def initialize(name)
    @player_name = name
    @hit_points = DEFAULT_HIT_POINTS
  end

  def suffer_attack(damage = 10)
    @hit_points -= damage
  end

  def attack(player)
    player.suffer_attack
  end

end
