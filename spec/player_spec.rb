require 'player'

describe Player do

subject(:p1) { described_class.new('P1')}
subject(:p2) {described_class.new('P2')}

  describe '#name' do 
    it 'responds to playername method' do 
      expect(p1.name).to eq 'P1'
    end 
  end 

  describe '#hitpoints' do
    it 'has an initial hitpoint value of 60' do
      expect(p1.hitpoints).to eq described_class::DEFAULT_HITPOINTS
    end
    
    it 'deducts 10 HP after an attack' do
      expect{p2.suffer_damage}.to change{p2.hitpoints}.by -10
    end
  end

  describe '#attack' do
    it 'allows opponents to attack' do
      expect(p2).to receive(:suffer_damage)
      p1.attack(p2)
    end
  end


end 