# Given two strings, the method `similar?` should return `TRUE` when the
# two strings have similar characters in the same position or otherwise return
# `FALSE`.
#
# For example, strings of `0I` and `O1` would return `TRUE` as `O` and `0` and
# `I` and `1` are similar and in the same position. Strings of `0I` and `1O`
# should return `FALSE` as the similar characters are not in the same position
# and `AB` and `XY` should return `FALSE` as the characters are not similar.
#
# The similar characters to use are:
#   * 0 O Q
#   * 1 I T
#   * 2 Z
#   * 5 S
#   * 8 B
#
# Complete the `similar?` function below to solve this problem.
#
# Some test cases have been added for you to use to test your solution.
def similar?(string_one, string_two)
  special = { '0' => %w[0 O Q],
              '1' => %w[1 I T],
              '2' => %w[2 Z],
              '5' => %w[5 S],
              '8' => %w[8 B] }

  special.each do |key, letters|
    string_one.gsub!(/[#{letters.join('')}]/, key)
    string_two.gsub!(/[#{letters.join('')}]/, key)
  end

  string_one == string_two
end

## Do not edit below here ##################################################

tests = [
  { given: { string_one: 'ABC123', string_two: 'ABC123' }, expectation: true },
  { given: { string_one: 'O1258',  string_two: '0IZSB' }, expectation: true },
  { given: { string_one: 'ABC123',  string_two: 'DEF456' }, expectation: false }
]

tests.each do |test|
  puts "#{'-' * 10} #{test[:given][:string_one]} similar to #{test[:given][:string_two]}? " \
       "Expect #{test[:expectation] ? 'TRUE' : 'FALSE'}."

  result = similar?(test[:given][:string_one], test[:given][:string_two])
  if result == test[:expectation]
    puts '✅ Test passed.'
  else
    puts "❌ Test failed (got #{result.nil? ? 'NIL' : (result ? 'TRUE' : 'FALSE')})."
  end
end

puts

# My attempt[failed]

# def similar_license_plates(plate1,plate2)
#   a = plate1.chars
#   b = plate2.chars
#   s0 = ["0","O","Q"]
#   s1 = ["1","I","T"]
#   s2 = ["2","Z"]
#   s5 = ["5","S"]
#   s8 = ["8","B"]
#   special = [s0, s1, s2, s5, s8]

#   a.each_with_index do |w , i|
#     if w == b[i]
#       return true
#     else
#        special.each do |array|
#           if array.include?(w) && array.include?(b[i])
#             return true
#           else
#             return false
#           end
#        end
#     end
#   end
# end
