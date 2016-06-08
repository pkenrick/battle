require 'player'

describe Player do

  subject(:player) {described_class.new("John")}
  subject(:player2) {described_class.new("Fred")}

  describe '#player_name' do
    it 'returns player\'s name' do
      expect(player.player_name).to eq "John"
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(player.hit_points).to eq Player::DEFAULT_HIT_POINTS
    end
  end

  describe '#suffer_attack' do
    it 'reduces hit points when attacked' do
      expect{ player.suffer_attack }.to change{ player.hit_points }.by -10
    end
  end



end
