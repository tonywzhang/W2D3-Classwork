require 'rspec'
require 'deck'

RSpec.describe 'deck' do
  let(:deck) {Deck.new}
  describe '#initialize' do
    it 'should initialize blank card array' do
      expect(deck.cards).to eq([])
    end
  end
  
  
  
  
end