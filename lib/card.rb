# Card constructor
class Card
  attr_accessor :card

  def initialize(suit, value)
    @card = "#{suit}#{value}"
  end
end
