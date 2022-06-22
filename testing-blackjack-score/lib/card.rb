class Card 

  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def face_card? 
    if @rank == "A" || @rank == "K" || @rank == "Q" || @rank == "J"
      return true
    end

    return false
  end

end







