class Game

	def initialize(player, player2)
		@players = [player, player2]
	end

	def player
		@players.first
	end

	def player2
		@players.last
	end

	def attack(player)
		player.point_changer
	end

end
