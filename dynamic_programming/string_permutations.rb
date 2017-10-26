def permutate_string(a, l, r)
  if l == r
    puts a
  else
    (l..r).each do |i|
      a[l], a[i] = a[i], a[l]
      permutate_string(a, l+1, r)
      a[l], a[i] = a[i], a[l] #backtrack
    end
  end
end

permutate_string("abc", 0, 2)
