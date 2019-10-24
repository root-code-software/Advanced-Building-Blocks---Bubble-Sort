def bubble_sort(arr)
    if !arr.is_a?(Array) 
        return arr
    end

    length = arr.length
    if arr.respond_to?('each')
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
    end
end

def bubble_sort_by(arr)
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
end
