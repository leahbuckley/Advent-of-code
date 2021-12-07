require 'enumerator'

report = File.open("day1.txt")

measurements = report.readlines.map(&:chomp).map(&:to_i)

numberincreases = []

measurements.each_cons(2) do |first, second|
	if second > first
		numberincreases.push(second)
	end
end

puts numberincreases.length
