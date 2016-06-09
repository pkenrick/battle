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
	end
end
