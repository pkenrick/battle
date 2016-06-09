require 'player'

describe Player do

subject(:player) { described_class.new('Paul')}

  describe '#name' do 
    it 'responds to playername method' do 
      expect(player.name).to eq 'Paul'
    end 
  end 




end 