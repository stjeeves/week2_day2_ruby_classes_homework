require_relative("fish")
require_relative("river")
require_relative("specs/bear_spec")

class Bear

attr_reader :name, :type, :stomach, :total_fish

def initialize(name, type)
  @name = name
  @type = type
  @stomach = []
end

def roar()
  return "ROAR!"
end

def count_fish_in_bear()
  @stomach.count
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
  return @river1[1].length
end

def remove_fish_from_river(fish)
  @total_fish.delete(fish)
  @total_fish.count
end


def eat_fish(fish)
  add_fish_to_bear(fish)
  remove_fish_from_river(fish)
end

#check if there is fish
#if there is
#fish is removed from river
#fish is added to bear stomach





end
