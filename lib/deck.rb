class Deck

  attr_accessor :deck

  def initialize
    @deck = []

    suits = %w[s h d c]

    suits.each do |suit|
      value = (1..13).to_a
      value.each do |num|
        deck << "#{suit}#{num.to_s}"
      end
    end
  end

  def select_suit(suit)
    deck.select{ |card| card[/#{suit}/] }
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
end