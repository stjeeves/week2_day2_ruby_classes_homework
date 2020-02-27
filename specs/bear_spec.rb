require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bears")
require_relative("../fish")
require_relative("../river")

class TestBear < MiniTest::Test

  def setup

    @bear1 = Bear.new("Samantha", "Grizzly")

  end

  def test_bear_name
    assert_equal("Samantha", @bear1.name)
  end

  def test_bear_type
    assert_equal("Grizzly", @bear1.type)
  end

end
