def merge(arr1, arr2)
  new_arr=[]
  (([arr1.length,arr2.length].min)*2).times do
    if arr1.length == 0 || arr2.length == 0
      break
    end
    new_arr.push(arr1[0] < arr2[0] ? arr1.shift() : arr2.shift)
  end
  new_arr.concat(arr1, arr2)
end

def sort(arr)
  len = arr.length
  if len > 2
    return merge(sort(arr[..len/2-1]), sort(arr[len/2..]))
  end
  return len <= 1 ? arr : [arr.min] + [arr.max]
end


p sort(Array.new(50) { rand(1...100) })
