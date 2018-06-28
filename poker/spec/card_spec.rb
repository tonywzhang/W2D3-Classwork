require 'rspec'
require 'card'

RSpec.describe 'cards' do
  let(:card) {Card.new}
  describe '#populate' do
    before(:each) { card.populate }
    
    it 'should populate cards array with 52 elements' do
      expect(deck.cards.length).to eq(52)
    end
    
    it 'should populate 52 Card objects' do
      expect(deck.cards.all?{|card| card.is_a? Card}).to be true
    end
    
  end
  
  
end