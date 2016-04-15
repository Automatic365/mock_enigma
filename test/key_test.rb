require "minitest/autorun"
require "minitest/pride"
require "./lib/key"

class KeyTest < Minitest::Test

  def test_it_can_generate_five_numbers
    key = Key.new
    assert_equal 5, key.key.length
  end

  def test_it_can_take_input
    key = Key.new("12345")
    assert_equal "12345", key.key
  end

end
