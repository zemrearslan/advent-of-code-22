file = File.open("input.txt")
arr = file.readlines.map()


max = 0
sum = 0
arr.each do |item|
    item = item.strip
    if item != ""
        sum = sum + Integer(item)
    else
        if sum > max 
            max = sum
        end
        sum = 0
    end
end

if sum > max 
    max = sum
end

puts max

file.close