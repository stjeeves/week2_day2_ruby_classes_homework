require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

require_relative("../fish")

class TestFish < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Steve")
    @fish2 = Fish.new("Tom")
    @fish3 = Fish.new("Jeff")
    @fish4 = Fish.new("Bob")
    @fish5 = Fish.new("Sergio")

    @fish = [@fish1, @fish2, @fish3, @fish4, @fish5]
  end

  # def test_count_total_fish()
  #   assert_equal(5, @fish.count_total_fish())
  # end

end
