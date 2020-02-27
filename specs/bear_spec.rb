require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bears")
require_relative("../fish")
require_relative("../river")

class TestBear < MiniTest::Test

  def setup

    @bear1 = Bear.new("Samantha", "Grizzly")

    @river1 = River.new("Esk", 5)

    @fish1 = Fish.new("Steve")
    @fish2 = Fish.new("Tom")
    @fish3 = Fish.new("Jeff")
    @fish4 = Fish.new("Bob")
    @fish5 = Fish.new("Sergio")

    @fish = [@fish1, @fish2, @fish3, @fish4, @fish5]

  end

  def test_bear_name
    assert_equal("Samantha", @bear1.name)
  end

  def test_bear_type
    assert_equal("Grizzly", @bear1.type)
  end

  def test_add_fish_to_bear()
    assert_equal(1, @bear1.add_fish_to_bear(@fish1))
  end

end
