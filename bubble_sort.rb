def bubble_sort(arr) 
    len = arr.length
    arr if len <= 1

    is_sorted = true 
    while is_sorted
        is_sorted = false
        (0...len - 1).each do |i|
            if arr[i] > arr[i + 1] 
                arr[i], arr[i + 1] = arr[i + 1], arr[i]
                is_sorted = true
            end
        end
    end
    arr
end
to_sort = [11, 5]

def bubble_sort_by(arr)
    include Comparable
    len = arr.length - 1
    arr if len <= 1
    
    have_sorted = true
    while have_sorted
        have_sorted = false
        (0...len).each do |i|

            if yield(arr[i], arr[i + 1]).to_i >= 0  
                arr[i] > arr[i + 1]
                arr[i], arr[i + 1] = arr[i + 1], arr[i]
                have_sorted = true
            end
        end
    end
    arr
end

sort_by = bubble_sort_by(%w[hi hello hey]) do |left, right|
    left.length - right.length
end
p sort_by
# sort_this = [2,0,4,3,7,14,1,1]
# p bubble_sort_by([2,0,4,3,7,14,1,1])
