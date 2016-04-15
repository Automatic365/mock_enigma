require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'

class OffsetTest < Minitest::Test

  def test_rotation_a_returns_first_two_digits_of_key
    o = Offset.new("12345")
    assert_equal "12", o.key_a
  end

  def test_rotation_b_returns_second_and_third_digits_of_key
    o = Offset.new("12345")
    assert_equal "23", o.key_b
  end

  def test_rotation_c_returns_third_and_fourth_digits_of_key
    o = Offset.new("12345")
    assert_equal "34", o.key_c
  end

  def test_rotation_d_returns_fourth_and_fifth_digits_of_key
    o = Offset.new("12345")
    assert_equal "45", o.key_d
  end

  def test_offset_a_returns_negative_fourth_digit_of_date_function
    o = Offset.new("12345", "140416")
    assert_equal "3", o.offset_a
  end

  def test_offset_b_returns_negative_third_digit_of_date_function
    o = Offset.new("12345", "140416")
    assert_equal "0", o.offset_b
  end

  def test_offset_c_returns_negative_second_digit_of_date_function
    o = Offset.new("12345", "140416")
    assert_equal "5", o.offset_c
  end

  def test_offset_d_returns_negative_first_digit_of_date_function
    o = Offset.new("12345", "140416")
    assert_equal "6", o.offset_d
  end

  def test_a_rotation_is_sum_of_rotation_a_and_offset_a
    o = Offset.new("12345", "140416")
    assert_equal o.key_a.to_i + o.offset_a.to_i, o.a_rotation
  end

  def test_b_rotation_is_sum_of_rotation_b_and_offset_b
    o = Offset.new("12345", "140416")
    assert_equal o.key_b.to_i + o.offset_b.to_i, o.b_rotation
  end

  def test_c_rotation_is_sum_of_rotation_c_and_offset_c
    o = Offset.new("12345", "140416")
    assert_equal o.key_c.to_i + o.offset_c.to_i, o.c_rotation
  end

  def test_d_rotation_is_sum_of_rotation_d_and_offset_d
    o = Offset.new("12345", "140416")
    assert_equal o.key_d.to_i + o.offset_d.to_i, o.d_rotation
  end

end
