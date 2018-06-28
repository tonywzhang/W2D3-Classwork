class Card
  
  attr_reader :suit, :value
  
  SUITS = [:spades, :clovers, :hearts, :diamonds]
  
  VALUES = [:two,
      :three,
      :four,
      :five,
      :six,
      :seven,
      :eight,
      :nine,
      :ten,
      :jack,
      :queen,
      :king,
      :ace]
  
  def initialize(suit,value)
    if Card.suits.include?(suit) && Card.values.include?(value)
      @suit = suit
      @value = value
    else
      raise ArgumentError
    end
  end
  
  def self.populate
    results = []
    Card.suits.each do |suit|
      Card.values.each do |value|
        results << Card.new(suit,value)
      end
    end
    results
  end
  
  def self.suits
    SUITS
  end
  
  def self.values
    VALUES
  end
  
end