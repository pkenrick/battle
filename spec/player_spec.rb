require 'player'

describe Player do

  subject(:player_1) {described_class.new("John")}
  subject(:player_2) {described_class.new("Fred")}

  describe '#player_name' do
    it 'returns player\'s name' do
      expect(player_1.player_name).to eq "John"
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(player_1.hit_points).to eq Player::DEFAULT_HIT_POINTS
    end
  end

  describe '#suffer_attack' do
    it 'reduces hit points when attacked' do
      expect{ player_1.suffer_attack }.to change{ player_1.hit_points }.by -10
    end
  end



end
