require_relative "dog.rb"

describe Dog do

	let(:my_dog) { Dog.new("Fido", 3) }
	let(:your_dog) { Dog.new("Ralphy", 4) }
  # my_dog = Dog.new("Fido", 3)

  describe "#age_in_dog_years" do
    it "returns the dog’s human age times 7" do
      # expect(my_dog.age_in_dog_years).to eq(21)
    end
  end

  describe "#give_treat" do 
    context "when the dog is inside" do 
      it "should return a message where we give them a treat" do 
        expect(my_dog.give_treat).to eq("here is one treat" )
      end
    end

    context "when the dog is not inside" do 
      
      it "should return a message where the dog gets TWO treats" do
        my_dog.inside = false
        
        expect(my_dog.give_treat).to eq("here are two treats")
      end
      
      context "and when the dog is in a car" do 
        it "should return a message where the dog gets TWO treats" do
          my_dog.inside = false
          my_dog.secondary_location = "car"
          
          expect(my_dog.give_treat).to eq("here is a pupachino")
        end
      end

    end

 
  end

  # describe "#bark" do
  #   it "returns what a dog says" do

  #     expect(my_dog.bark).to eq("woof woof")
  #   end
  # end

end 



