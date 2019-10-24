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
