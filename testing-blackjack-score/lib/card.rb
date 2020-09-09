class Card 
  attr_reader :rank

  def initialize(rank, suit)
    @rank = rank 
    @suit = suit
  end

  def ace_card? 
    @rank == "A"
  end

end














# def value 
# end

# def print_card
  # return "#{suit} #{rank}"
# end