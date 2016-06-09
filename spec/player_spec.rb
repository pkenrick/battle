require 'player'

describe Player do

	let(:player) {described_class.new("Name")}
	let(:player2) {described_class.new("Name2")}

	describe "#player_name" do
		it "returns the player name" do
			expect(player.player_name).to eq "Name"
		end
	end

	# describe "#attack" do
	# 	it "reduces HP by 10" do
	# 		player.attack(player2)
	# 		expect(player2.hit_points).to eq 70
	# 	end
	# end
end
