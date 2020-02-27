require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

require_relative("../fish")

class TestFish < MiniTest::Test

def setup()
  @fish1 = Fish.new("Jeremiah")
end

def test_get_name()
  assert_equal("Jeremiah", @fish1.name)
end
end
