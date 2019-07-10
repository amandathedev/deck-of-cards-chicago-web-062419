require "pry"

class Deck
  attr_reader :cards

  def cards
    Card.deck
  end

  def choose_card
    Deck.cards.pop
  end

  def self.deck
    @@deck = []
    @@rank_a.each do |rank|
      @@suit_a.each do |suit|
        card = Card.new
        card.suit = suit
        card.rank = rank
        @@deck << card
      end
    end
    @@deck
  end
end

class Card
  attr_accessor :rank, :suit
  attr_reader :suit_a, :rank_a

  @@rank_a = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  @@suit_a = ["Hearts", "Clubs", "Diamonds", "Spades"]
end
