class Container
  attr_reader :weight, :maximum_holding_weight, :ingredients

  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @initial_weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def fill_with_ingredient(ingredient)
    quantity = (@maximum_holding_weight / ingredient.weight).to_i
    @weight += quantity * ingredient.weight
    quantity.times do
      @ingredients << ingredient
    end
  end

  def which_ingredient
    if @ingredients[0]
      return @ingredients[0].name
    end
  end

  def how_many_ingredients
    @ingredients.length
  end

  def remove_one_ingredient
    removed_ingredient = @ingredients.pop
    @weight -= removed_ingredient.weight
  end

  def empty
    @ingredients = []
    @weight = @initial_weight
  end
end
