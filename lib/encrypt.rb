require_relative "offset"
require_relative "character_map"

class Encrypt

  attr_reader   :rotations, :key, :date, :offset, :characters

  def initialize(key = nil, date = nil)
    @date = date
    @key = key
    @offset = Offset.new(key, date)
    @characters = Character_map.new.character_map
  end

  def get_rotated_char
    @rotations = @offset.rotations
  end

  def encrypt_a_rotation(letter)
    a_rotation_characters = characters.rotate(rotations[0])
    Hash[characters.zip(a_rotation_characters)][letter]
  end

  def encrypt_b_rotation(letter)
    b_rotation_characters = characters.rotate(rotations[1])
    Hash[characters.zip(b_rotation_characters)][letter]
  end

  def encrypt_c_rotation(letter)
    c_rotation_characters = characters.rotate(rotations[2])
    Hash[characters.zip(c_rotation_characters)][letter]
  end

  def encrypt_d_rotation(letter)
    d_rotation_characters = characters.rotate(rotations[3])
    Hash[characters.zip(d_rotation_characters)][letter]
  end

  def encrypt(message)
    start = 0
    result_message = ""
    while start < message.length-1 do
      group = message.slice(start, 4)
      result_message = result_message + get_rotated_char(group[0], @offset.a_rotation)
      result_message = result_message + get_rotated_char(group[1], @offset.b_rotation)
      result_message = result_message + get_rotated_char(group[2], @offset.c_rotation)
      result_message = result_message + get_rotated_char(group[3], @offset.d_rotation)
      start = start + 4
    end
    result_message
  end

end
