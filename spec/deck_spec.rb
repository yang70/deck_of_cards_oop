require "minitest/spec"
require "minitest/autorun"
require "deck"

describe "test that creating a new deck has features of a card deck" do
  before do
    @test_deck = Deck.new
  end

  it "should have 52 cards" do
    @test_deck.deck.length.must_equal 52
  end

  it "should have 13 cards of each suit" do
    @test_deck.spades.length.must_equal 13
    @test_deck.hearts.length.must_equal 13
    @test_deck.diamonds.length.must_equal 13
    @test_deck.clubs.length.must_equal 13
  end
end
