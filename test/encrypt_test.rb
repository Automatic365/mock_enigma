
require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'

class EncryptTest < Minitest::Test

  def test_input_encrypts_a_rotation
    e = Encrypt.new("12345", "130416")
    e.get_rotated_char
    assert_equal "p", e.encrypt_a_rotation("a")
  end

  def test_input_encrypts_b_rotation
    e = Encrypt.new("12345", "130416")
    e.get_rotated_char
    assert_equal "x", e.encrypt_b_rotation("a")
  end

  def test_input_encrypts_c_rotation
    e = Encrypt.new("12345", "130416")
    e.get_rotated_char
    assert_equal "a", e.encrypt_c_rotation("a")
  end

  def test_input_encrypts_d_rotation
    e = Encrypt.new("12345", "130416")
    e.get_rotated_char
    assert_equal "m", e.encrypt_d_rotation("a")
  end

  def test_word_encrypts_properly_based_on_4_part_rotation
    e = Encrypt.new("12345", "130416")
    e.get_rotated_char
    message = "villanova"
    assert_equal "stuff", e.encrypt(message)
  end

  def test_input_string_length_equals_output_string_length
    skip
    e = Encrypt.new("12345", "130416")
    e.get_rotated_char
    message = "villanova"
    assert_equal 9, e.encrypt(message).length
  end


end
