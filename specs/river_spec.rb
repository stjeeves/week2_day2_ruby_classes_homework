require("minitest/autorun")
require("minitest/reporters")
require("pry")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

require_relative("../river")
require_relative("../fish")

class TestRiver < MiniTest::Test

  def setup()
    @river1 = River.new("Esk", 5)

    @fish1 = Fish.new("Steve")
    @fish2 = Fish.new("Tom")
    @fish3 = Fish.new("Jeff")
    @fish4 = Fish.new("Bob")
    @fish5 = Fish.new("Sergio")

    @fish = [@fish1, @fish2, @fish3, @fish4, @fish5]
  end

  def test_river_name
    assert_equal("Esk", @river1.name)
  end

  def test_river_fishes
    assert_equal(5, @river1.fishes)
  end

  def test_remove_fish_from_river()
    assert_equal(4, @river1.remove_fish_from_river(@fish1))
  end


end
