require "set"
file = File.open("input-p2.txt")
arr = file.readlines.map()


sum = 0
s = SortedSet.new
arr.each do |item|
    item = item.strip
    if item != ""
        sum = sum + Integer(item)
    else
        s << sum
        sum = 0
    end
end

s << sum

arr = s.to_a
puts arr[s.length-1] + arr[s.length-2] + arr[s.length-3]

file.close