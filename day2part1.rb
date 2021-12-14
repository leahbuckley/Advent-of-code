input = File.open("day2.txt")

planned_route = input.readlines.map(&:chomp)

horizontal_positions = []

planned_route.each do |line|
	if line.include? "forward"
		horizontal_positions.push(line)
	end
end

horizontal_numbers = horizontal_positions.map {|line| line[/\d+/]}

final_horizontal_position = horizontal_numbers.map(&:to_i).sum


decreased_depth = []

planned_route.each do |line|
	if line.include? "up"
		decreased_depth.push(line)
	end
end

up_numbers = decreased_depth.map {|line| line[/\d+/]}

total_decreased_depth = up_numbers.map(&:to_i).sum

increased_depth = []

planned_route.each do |line|
	if line.include? "down"
		increased_depth.push(line)
	end
end

down_numbers = increased_depth.map {|line| line[/\d+/]}

total_increased_depth = down_numbers.map(&:to_i).sum

final_depth = total_increased_depth - total_decreased_depth

final_position = final_horizontal_position * final_depth





