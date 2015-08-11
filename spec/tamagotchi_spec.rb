require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  describe("#initialize") do
    it("sets the name and life levels of a new pet") do
      my_pet = Tamagotchi.new("Gitty Hubby")
        expect(my_pet.name()).to(eq("Gitty Hubby"))
        expect(my_pet.food_level()).to(eq(10))
        expect(my_pet.sleep_level()).to(eq(10))
        expect(my_pet.activity_level()).to(eq(10))
    end
  end

  describe("#is_alive") do
    it("is alive if the food level is above 0") do
      my_pet = Tamagotchi.new("Gitty Hubby")
      expect(my_pet.is_alive()).to(eq(true))
    end

    it("is dead if food level is 0") do
      my_pet = Tamagotchi.new("Gitty Hubby")
      my_pet.food_level()
      expect(my_pet.is_alive()).to(eq(false))
    end
  end

  describe("#time_passes") do
      it("decreases the amount of food the Tamagotchi has left by 1") do
      my_pet = Tamagotchi.new("Gitty Hubby")
      my_pet.time_passes()
      expect(my_pet.food_level()).to(eq(7))
      expect(my_pet.sleep_level()).to(eq(8))
      expect(my_pet.activity_level()).to(eq(9))
    end
  end

  describe("#feed") do
    it("replenish the Tamagotchi's food level to 10") do
      my_pet = Tamagotchi.new("Git Hubby")
      my_pet.feed()
      expect(my_pet.feed()).to(eq(10))
    end
  end
end
