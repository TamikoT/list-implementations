# Implementation of a list using a Native array --> ruby does this automatically

class ArrayList
  def initialize
    @storage = [0,0,0,0,0,0,0,0,0,0] # capacity 10
    @size = 0
  end

  # Adds _value_ at the end of the list
  def add(value)
    @storage[@size] = value # fixed size fixed capacity
    @size += 1
    # can still add 0
  end

  # Deletes the _last_ value in the array
  def delete
    # @storage[@size] = 0
    @size -= 1
  end

  def include?(key)
    @size.times do |i|
      if @storage[i] == key
        return true
      end
    end
    return false
  end

  def size
    @size
  end

  def max
    max = @storage[0] # to handle array of all negative numbers
    @size.times do |i|
      max = @storage[i] if @storage[i] > max
    end
    return max
  end

  def to_s
    str = ""
    @size.times do |i|
      str += "#{@storage[i]}, "
    end
    return "[#{str[1..-3]}]"
  end
end
