require "spec_helper"

describe Card do
  # These UTF-8 characters will be useful for making different hands:
  # '♦', '♣', '♠', '♥'
  let(:two_card) { Card.new("2", '♥')}
  let(:ace_card) { Card.new("A", '♣')}

  # this is an overkill test
  describe ".new" do 
    it "returns a new card object" do 
      expect(Card.new("2", '♥')).to be_a(Card)
    end
  end

  describe "#rank" do 
    it "return the rank of the card" do 
      expect(two_card.rank).to eq("2")
    end
  end

  describe "#suit" do 
    it "return the suit of the card" do 
      expect(two_card.suit).to eq("♥")
    end
  end

  describe "#face_card?" do 
    context "if the card is an face card" do 
      it "returns true" do 
        expect(ace_card.face_card?).to eq(true)
      end
    end
    
    context "if the card is not a face card" do 
      it "returns false" do 
        expect(two_card.face_card?).to eq(false)
      end
    end

  end

  # describe "#value" do
  #   it "" do 
  #   end 
  # end

  # describe "#summary" do 
  #   it "" do 
  #   end
  # end


 
end
