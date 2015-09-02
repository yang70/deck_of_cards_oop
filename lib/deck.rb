require_relative 'card'

class Deck
  attr_accessor :deck

  def initialize
    @deck = []

    suits = %w(s h d c)

    suits.each do |suit|
      value = (1..13).to_a
      value.each { |num| deck << Card.new(suit, num) }
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
    deck.select { |card| card.card[/#{suit}/] }
  end
end
