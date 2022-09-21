class Dog 
	attr_reader :name
  attr_accessor :inside

	def initialize(name, age)
		@name = name 
    @age = age 
    @inside = true
    @secondary_location = nil
  end

  def age_in_dog_years
    @age * 7
  end

  def give_treat
    if @inside 
      return "here is one treat" 
    else 
      return "here are two treats"
    end
  end
end
