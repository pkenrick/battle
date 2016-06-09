class Game

	# def initialize(player = Player.new(name))
	# 	@player = player
	# end

	def attack(player)
		player.point_changer
	end

	private
	attr_reader :player

end
