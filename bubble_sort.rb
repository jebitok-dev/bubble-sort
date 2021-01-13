def bubble_sort(arr)
    len = arr.length
    p len
    arr if len <= 1

    # arr_new = []
    loop do
        is_sorted = false
        (len -1).times do |i|
            p "iteration #{i}"
            if arr[i] > arr[i + 1]
                temp = arr[i]
                arr[i] = arr[i + 1]
                arr[i = 1] = temp
                # p arr[i]      
                is_sorted = true
            end
            arr
        end
        break if is_sorted
    end
end
arr = [11, 5, 2,7,6, 15]
p bubble_sort(arr)