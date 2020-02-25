class River

attr_reader :name, :total_fish

  def initialize(name, total_fish)
    @name = name
    @total_fish = total_fish
  end

  def add_fish_to_river(fish1, fish2, fish3, fish4, fish5)
    @total_fish.push(fish1, fish2, fish3, fish4, fish5)
    return @total_fish.length
  end

  def count_fish_in_river()
    return @total_fish.length
  end

  def remove_fish_from_river(fish)
    return @total_fish.delete(fish)
  end






end
