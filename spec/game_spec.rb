require 'game'


describe Game do
	let(:player) {double :player}
	let(:player2) {double :player2}
	subject(:game) {described_class.new}

	describe "#attack" do
		it "reduces HP by 10" do
			expect(player2).to receive(:point_changer)
			game.attack(player2)
		end
	end
end
