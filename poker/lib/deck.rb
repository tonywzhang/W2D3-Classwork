require_relative 'card'

class Deck
  
  attr_reader :cards
  
  def initialize(cards=[])
    @cards = cards
  end
  
  def size
    cards.size
  end
  
  def populate
    
  end
  
end

if __FILE__ == $PROGRAM_NAME
  d = Deck.new
  d.populate
  print d.cards
end