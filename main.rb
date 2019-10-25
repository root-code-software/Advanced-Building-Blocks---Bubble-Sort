# frozen_string_literal: true

def verify_input(array)
  if !array.is_a?(Array)
    false
  else
    array.respond_to?('each') ? true : false
  end
end

def bubble_sort(arr)
  return unless verify_input(arr)

  length = arr.length
  loop do
    sorted = true
    (length - 1).times do |i|
      next if i + 1 == arr.length

      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = false
      end
    end
    break if sorted
  end
  arr
end

def bubble_sort_by(arr)
  return unless verify_input(arr)

  raise 'Please provide a block' unless block_given?

  loop do
    swapped = true
    (arr.length - 1).times do |i|
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = false
      end
    end
    break unless swapped
  end
  arr
end
