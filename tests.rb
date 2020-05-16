# frozen_string_literal: true

require_relative 'main'

puts 'Let\'s try to sort some arrays!'
puts '#bubble_sort'

numbers = [4, 3, 78, 2, 0, 2]

print 'Original: '
p numbers
print 'Sorted: '
print bubble_sort(numbers)

puts ''
puts 'Now some extra tests: '
print bubble_sort([])
print bubble_sort(1)
print bubble_sort('hello i am blue')
p bubble_sort([1])

puts 'Let\'s try with an array of letters: '
puts '#bubble_sort'

letters = %w[ccc a ab oqnwelqwe]

print 'Original: '
p letters

print 'Sorted: '
print bubble_sort_by(letters) { |left, right|
  left.length - right.length
}

puts ''
puts 'Now some extra tests: '
p bubble_sort_by(2) { |left, right|
  left - right
}
