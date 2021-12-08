report = File.open("day1.txt")

measurements = report.readlines.map(&:chomp).map(&:to_i)

array_of_sums = measurements.each_cons(3).map(&:sum)

numberincreases = []

array_of_sums.each_cons(2) do |first, second|
	if second > first
		numberincreases.push(second)
	end
end

puts numberincreases.length
