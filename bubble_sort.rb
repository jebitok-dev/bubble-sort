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
    len = arr.length
    arr if len <= 1
    
    have_sorted = true
    while have_sorted
        have_sorted = false
        (0...len - 1).each do |i|

            num = yield(arr[i], arr[i + 1])
            next unless num >= 1  
            
            if arr[i] > arr[i + 1]
                arr[i], arr[i + 1] = arr[i + 1], arr[i]
                have_sorted = true
            end
        end
    end
    arr
end

bubble_sort_by(["hi","hello", "hey"]) do |left, right|
    left.length - right.length
end
p bubble_sort_by(to_sort)
# sort_this = [2,0,4,3,7,14,1,1]
# p bubble_sort_by([2,0,4,3,7,14,1,1])
