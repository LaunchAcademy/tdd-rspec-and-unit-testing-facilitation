require "spec_helper"

describe Card do
  # These UTF-8 characters will be useful for making different hands:
  # '♦', '♣', '♠', '♥'
  let(:three_card) { Card.new(3, "♠") }
  let(:ace_card) { Card.new("A", "♠") }

  # You can add more sample hands using this same syntax, with a different variable name!

  describe ".new" do
    it "should create a card object of the card class" do
      expect(three_card).to be_a(Card)
    end
  end

  describe "#rank" do
    it "returns the rank of the card" do
      expect(three_card.rank).to eq(3)
    end
  end

  describe "#suit" do
    it "return the suit of the card" do
      expect(three_card.suit).to eq("♠")
    end
  end

  describe "#ace_card?" do
    it "returns true if the card is an ace" do
      expect(ace_card.ace_card?).to eq(true)
    end

    it "return false if the card is a number or face card" do
      expect(three_card.ace_card?).to eq(false)
    end
  end
end
