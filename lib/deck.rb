# Deck of cards constructor
class Deck
  attr_accessor :deck

  def initialize
    @deck = []

    suits = %w(s h d c)

    suits.each do |suit|
      value = (1..13).to_a
      value.each { |num| deck << Card.new(suit, num).card }
    end
  end

  def spades
    select_suit('s')
  end

  def hearts
    select_suit('h')
  end

  def diamonds
    select_suit('d')
  end

  def clubs
    select_suit('c')
  end

  private

  def select_suit(suit)
    deck.select { |card| card[/#{suit}/] }
  end
end

# Card constructor
class Card
  attr_accessor :card

  def initialize(suit, value)
    @card = "#{suit}#{value}"
  end
end
