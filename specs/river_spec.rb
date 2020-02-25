require("minitest/autorun")
require("minitest/reporters")
require("pry")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

require_relative("../river")
require_relative("../fish")
require_relative("fish_spec")

class TestRiver < MiniTest::Test

  def setup()
    @river1 = River.new("Esk", [@fish1, @fish2, @fish3, @fish4, @fish5])

    @fish1 = Fish.new("Steve")
    @fish2 = Fish.new("Tom")
    @fish3 = Fish.new("Jeff")
    @fish4 = Fish.new("Bob")
    @fish5 = Fish.new("Sergio")

    @fish = [@fish1, @fish2, @fish3, @fish4, @fish5]
  end

  def test_add_fish_to_river()
    @river1.add_fish_to_river(@fish1, @fish2, @fish3, @fish4, @fish5)
    assert_equal(5, @river1.total_fish.length)
  end

  def test_count_fish_in_river()
    @river1.add_fish_to_river(@fish1, @fish2, @fish3, @fish4, @fish5)
    @river1.count_fish_in_river()
    assert_equal(5, @river1.count_fish_in_river)
  end

  def test_remove_fish_from_river()
    @river1.add_fish_to_river(@fish1, @fish2, @fish3, @fish4, @fish5)
    @river1.remove_fish_from_river(@fish1)
    @river1.count_fish_in_river()
    assert_equal(4, @river1.count_fish_in_river)
  end



end
