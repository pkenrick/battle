require 'game'

describe Game do

  subject(:game) { described_class.new }
  let(:player1) { double :player }
  let(:player2) { double :player }

  describe '#attack' do
    it '#suffer_attack is called on player2' do
      expect(player2).to receive(:suffer_attack)
      game.attack(player1, player2)
    end
  end
end
