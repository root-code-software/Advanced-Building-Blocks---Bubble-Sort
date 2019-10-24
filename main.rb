def verify_input (array)
  if array.is_a?(Array)
    if array.all?(Numeric) || array.all? (String) 
      array.respond_to?('each') ? true : false
    end
  end
  return false
end

def bubble_sort(arr)
  if verify_input(arr)
    length = arr.length
      while true do
          sorted = true

          (length-1).times do |i|
              next if i+1 == arr.length 
              if arr[i] > arr[i+1]
                  arr[i], arr[i+1] = arr[i+1], arr[i]
                  sorted = false
              end
          end
          break if sorted
      end
      arr
  else
    return arr
  end
end

def bubble_sort_by(arr)
  if verify_input(arr)
    if block_given?
      loop do
        swapped = false
        (arr.length - 1).times do |i|
          if yield(arr[i], arr[i + 1]).positive?
            arr[i], arr[i + 1] = arr[i + 1], arr[i]
            swapped = true
          end
        end
        break unless !swapped
      end
      arr
    else
      bubble_sort(arr)
    end
  else
    return arr
  end
end
