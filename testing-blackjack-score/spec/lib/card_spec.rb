require "spec_helper"

describe Card do
  # These UTF-8 characters will be useful for making different hands:
  # '♦', '♣', '♠', '♥'
  let(:two_card) { Card.new("2", "♣") }
  let(:ace_card) { Card.new("A", "♣") }

  describe ".new" do 
    it "create a card object that is an instance of the card class" do
      expect(two_card).to be_a(Card)
    end
  end 

  describe "#rank" do 
    it "returns the value of the rank property" do 
      expect(two_card.rank).to eq("2")
    end
  end

  describe "#ace_card?" do 
    it "returns true if the card is an ace" do 
      expect(ace_card.ace_card?).to eq(true)
    end
  
    it "returns false if the card is not an ace" do 
      expect(two_card.ace_card?).to eq(false)
    end
  end
end