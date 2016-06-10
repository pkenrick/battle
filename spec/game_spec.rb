require 'game'


describe Game do
	let(:player) {double :player}
	let(:player2) {double :player2}
	subject(:game) {described_class.new(player, player2)}

	describe "player" do
		it 'gets the first player' do
			expect(game.player).to eq player
		end
	end

	describe "#attack" do
		it "reduces HP by 10" do
			expect(player2).to receive(:point_changer)
			game.attack(player2)
		end

		describe "#current_turn" do
			it "starts as player 1" do
				expect(game.current_turn).to eq player
			end
		end

		describe "#switch_turns" do
			it "switches the turn" do
				game.switch_turns
				expect(game.current_turn).to eq player2
			end
		end

		describe "#opposing_player" do
			it "starts with player2" do
				expect(game.opposing_player).to eq player2
			end
			it "changes the opposing player after every turn" do
				game.switch_turns
				expect(game.opposing_player).to eq player
			end
		end

	end
end
