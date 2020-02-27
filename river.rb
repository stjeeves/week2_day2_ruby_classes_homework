class River

attr_reader :name, :fishes

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

  def remove_fish_from_river(fish)
    @fishes.delete(fish)
    @fishes.count
  end





end
