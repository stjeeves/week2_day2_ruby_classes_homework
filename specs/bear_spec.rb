require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bears")
require_relative("../fish")
require_relative("../river")

class TestBear < MiniTest::Test

  def setup()
    @bear1 = Bear.new("Steve", "Grizzly")

    @fish1 = Fish.new("Steve")
    @fish2 = Fish.new("Tom")
    @fish3 = Fish.new("Jeff")
    @fish4 = Fish.new("Bob")
    @fish5 = Fish.new("Sergio")

    @river1 = River.new("Esk", [@fish1, @fish2,@fish3, @fish4, @fish5])
  end

  def test_roar()
    assert_equal("ROAR!", @bear1.roar)
  end

  def test_count_fish_in_bear()
    assert_equal(0, @bear1.count_fish_in_bear)
  end

  def test_add_fish_to_bear()
    assert_equal(1, @bear1.add_fish_to_bear(@fish1))
  end

  # def test_add_fish_to_river()
  #   @river1.add_fish_to_river(@fish1, @fish2, @fish3, @fish4, @fish5)
  #   assert_equal(5, @river1.total_fish.length)
  # end

  def test_count_fish_in_river()
    @river1.count_fish_in_river()
    assert_equal(5, @river1.count_fish_in_river)
  end

  def test_remove_fish_from_river()
    @river1.remove_fish_from_river(@fish1)
    @river1.count_fish_in_river()
    assert_equal(4, @river1.count_fish_in_river)
  end

  def test_eat_fish()
    #check if there is fish
    #if there is
    #fish is removed from river
    #fish is added to bear stomach
    @bear1.add_fish_to_bear(@fish1)
    @river1.remove_fish_from_river(@fish1)
    assert_equal(1, @bear1.add_fish_to_bear)
    assert_equal(4, @river1.count_fish_in_river)
  end

end
