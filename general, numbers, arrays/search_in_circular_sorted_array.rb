
def search(a,n,t)
  low = 0
  high = n-1
  while low <= high
    mid = (low + high)/2
    if a[mid] == t
      return mid
    end
    if a[mid] < a[high]
      if t > a[mid] && t <= a[high]
        low = mid+1
      else
        high = mid-1
      end
    else
      if x>=a[low] && x<a[mid]
        high=mid-1
      else
        low = mid+1
      end
    end
  end
  return -1
end


a = [8,9,10,2,5,6,7]
t = 9
puts search(a,7,t)

a = [9,10,2,5,6,8]
t = 5
puts search(a,6,t)
