# frozen_string_literal: true

require_relative 'main'

print bubble_sort([4, 3, 78, 2, 0, 2])
print bubble_sort([])
print bubble_sort(1)
print bubble_sort('hello i am blue')
p bubble_sort([1])

print bubble_sort_by(%w[ccc a ab oqnwelqwe]) { |left, right|
  left.length - right.length
}

p bubble_sort_by(2) { |left, right|
  left - right
}
