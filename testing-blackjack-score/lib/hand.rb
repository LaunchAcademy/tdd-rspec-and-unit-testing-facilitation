class Hand
  def initialize(cards)
    @cards = cards
  end

  def total_value
    total = 0

    @cards.each do |card|
      total += card.value
    end

    return total 
  end

  def card_summary
    output_message = ""

    @cards.each do |card|
      output_message += "#{card.print_card} "
    end

    return output_message
  end
end
