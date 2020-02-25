require_relative("fish")
require_relative("river")

class Bear

attr_reader :name, :type

def initialize(name, type)
  @name = name
  @type = type
  @stomach = []
end

def roar()
  return "ROAR!"
end

def fish_in_bear()
  @stomach.length
end

def add_fish_to_bear(fish)
  @stomach.push(fish)
  @stomach.count
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


def eat_fish(bear, fish)
  total_fish = count_fish_in_river()
  if total_fish >= 1
    bear.add_fish_to_bear(fish)
  end
  remove_fish_from_river(fish)
end

#check if there is fish
#if there is
#fish is removed from river
#fish is added to bear stomach





end
