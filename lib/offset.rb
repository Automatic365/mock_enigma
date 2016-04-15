class Offset

  attr_reader :key, :offset, :date

  def initialize(key = nil, date = nil)
    if key.nil?
      @key = get_key
    else
      @key = key
    end

    if date.nil?
      @date = Time.now.strftime("%d%m%y")
    else
      @date = date
    end
    @offset = get_offset
  end

  def get_key
    Key.new
  end

  def generate_offset(date)
    squared = date.to_i ** 2
    @offset = squared.to_s[-4..-1]
  end

  def get_offset
    generate_offset(date)
  end

  def key_a
    key[0..1]
  end

  def key_b
    key[1..2]
  end

  def key_c
    key[2..3]
  end

  def key_d
    key[3..4]
  end

  def offset_a
    offset[-4]
  end

  def offset_b
    offset[-3]
  end

  def offset_c
    offset[-2]
  end

  def offset_d
    offset[-1]
  end

  def a_rotation
    key_a.to_i + offset_a.to_i
  end

  def b_rotation
    key_b.to_i + offset_b.to_i
  end

  def c_rotation
    key_c.to_i + offset_c.to_i
  end

  def d_rotation
    key_d.to_i + offset_d.to_i
  end

  def rotations
    [a_rotation, b_rotation, c_rotation, d_rotation]
  end
end
