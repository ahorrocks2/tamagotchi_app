class Tamagotchi
  define_method(:initialize) do |name|
    @name = name
    @food_level = 10
    @sleep_level = 10
    @play_level = 10
  end

  define_method(:name) do
    @name
  end

  define_method(:food_level) do
    @food_level
  end

  define_method(:sleep_level) do
    @sleep_level
  end

  define_method(:play_level) do
    @play_level
  end

  define_method(:is_alive) do
    if @food_level > 0
      true
    else
      false
    end
  end



end
