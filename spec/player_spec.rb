require 'player'

describe Player do

  subject(:player) {described_class.new("John")}

  describe '#player_name' do
    it 'returns player\'s name' do
      expect(player.player_name).to eq "John"
    end
  end

end
