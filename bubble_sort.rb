def bubble_sort(arr) 
    len = arr.length
    arr if len <= 1

    arr_new = true 
    while arr_new
        arr_new = false
        (0...len - 1).each do |i|
            if arr[i] > arr[i + 1] 
                arr[i], arr[i + 1] = arr[i + 1], arr[i]
                arr_new = true
            end
        end
    end
    arr
end
p bubble_sort([11, 5])

