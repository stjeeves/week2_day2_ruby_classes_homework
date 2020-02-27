require_relative("fish")
require_relative("river")
require_relative("specs/bear_spec")

class Bear

attr_reader :name, :type, :stomach

def initialize(name, type)
  @name = name
  @type = type
  @stomach = []
end

def add_fish_to_bear(fish)
  @stomach << fish
  @stomach.count
end




end
