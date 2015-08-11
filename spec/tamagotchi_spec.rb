require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  describe("#initialize") do
    it("sets the name and life levels of a new pet") do
      my_pet = Tamagotchi.new("Gitty Hubby")
        expect(my_pet.name()).to(eq("Gitty Hubby"))
        expect(my_pet.food_level()).to(eq(10))
        expect(my_pet.sleep_level()).to(eq(10))
        expect(my_pet.play_level()).to(eq(10))
    end
  end


end
