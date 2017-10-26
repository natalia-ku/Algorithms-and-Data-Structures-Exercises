def find_dupe(a)
  (0...a.length-1).each do |i|
    (i+1...a.length).each do |j|
      if a[i]^a[j] == 0
        puts "#{a[i]} #{i} #{j}"
      end
    end
  end
end

arr = [1, 2, 3, 4, 5, 3, 6]
find_dupe(arr)

arr = [1, 2, 3, 3, 4]
find_dupe(arr)
