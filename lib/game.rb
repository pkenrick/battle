class Game
attr_reader :current_turn, :opposing_player

	def initialize(player, player2)
		@players = [player, player2]
		@current_turn = player
		@opposing_player = player2
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

	def switch_turns
		@current_turn = opponent_of(current_turn)
		@opposing_player = opponent_of(current_turn)
	end

	private

	def opponent_of(the_player)
		@players.select{|player| player != the_player }.first
	end

end
