class String
  def XOR(other_str)
    chars.map.with_index do |char, i|
      char == other_str[i] ? "0" : "1"
    end.join
  end

  def LSHIFT(num)
    raise ArgumentError unless num.respond_to?(:to_int)
    str = self.dup
    num.times { str << "0" }
    str
  end
end

def power_of_two?(num)
  num > 0 && num & (num - 1) == 0
end

def swap(x, y)
  x = y - x
  y = y - x
  x = x + y
  puts "#{x}, #{y}"
end

def swap2(x, y)
  x = x ^ y
  y = x ^ y
  x = x ^ y
  puts "#{x}, #{y}"
end

def twos_complement(binary_str)
  complement = ""
  mirror = ~binary_str.to_i(2) + 1
  (binary_str.length - 1).downto(0) { |n| complement << mirror[n].to_s }

  complement
end

def find_missing(arr1, arr2)
  num = 0
  arr1.each { |el| num ^= el }
  arr2.each { |el| num ^= el }
  num
end

def find_missing2(arr1, arr2)
  [arr1, arr2].inject(0) { |num, arr| arr.inject(num, :^) }
end
