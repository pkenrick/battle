class Player

	attr_reader :player_name, :hit_points

	DEFAULT_HP = 80

	def initialize(player_name, hit_points = DEFAULT_HP)
		@player_name = player_name
		@hit_points = hit_points
	end

	def point_changer
		@hit_points -= 10
	end

end
