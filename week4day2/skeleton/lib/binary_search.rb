def b_search(arr, target)
    mid = arr.length / 2
    return mid if arr[mid] == target
    left = arr[0...mid]
    right = arr[mid+1..-1]
    
    return nil if arr.length <= 1

    if target < arr[mid]
        b_search(left, target)
    else
       if b_search(right, target) == nil
        return nil
       else
        b_search(right, target) + mid + 1
       end
    end

end

a = [1,2,3,4,5,6,7,8,9]

6,7,8,9

p b_search(a, 10)