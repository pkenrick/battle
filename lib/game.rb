class Game
attr_reader :current_turn, :opposing_player, :game_over

	def initialize(player, player2)
		@players = [player, player2]
		@current_turn = player
		@opposing_player = player2
		@game_over = false
	end

	def player
		@players.first
	end

	def player2
		@players.last
	end

	def attack(player)
		player.point_changer
		check_game_status
	end

	def switch_turns
		@current_turn = opponent_of(current_turn)
		@opposing_player = opponent_of(current_turn)
	end

	def self.create(player, player2)
		@game = Game.new(player, player2)
	end

	def self.instance
		@game
	end

	private

	def opponent_of(the_player)
		@players.select{|player| player != the_player }.first
	end

	def check_game_status
		@game_over = player.hit_points <= 0 || player2.hit_points <=0 ? true : false
	end

end
