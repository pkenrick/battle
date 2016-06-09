class Player

	attr_reader :player_name, :hit_points

	def initialize(player_name)
		@player_name = player_name
		@hit_points = 80
	end

	def attack(player)
		player.point_changer
	end

	def point_changer
		@hit_points -= 10
	end

end
