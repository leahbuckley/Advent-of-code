input = File.open("day2.txt")

planned_route = input.readlines.map(&:chomp)

aim = 0
horizontal_position = 0
depth = 0

planned_route.each do |line|
	if line.include?("down")
		aim += line[/\d+/].to_i

	elsif line.include?("up")
		aim -= line[/\d+/].to_i

	else line.include?("forward")
		horizontal_position += line[/\d+/].to_i
		increase_depth = aim * line[/\d+/].to_i
		depth += increase_depth 
	end
end
puts depth * horizontal_position



