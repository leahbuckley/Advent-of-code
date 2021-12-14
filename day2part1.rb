module Navigation
	extend self
	
	def summed_numbers(direction)
		planned_route.select { |line| line.include?(direction) }.
			map { |line| line[/\d+/].to_i }.
			sum
	end

	def final_position
		final_depth = summed_numbers("down") - summed_numbers("up")
		summed_numbers("forward") * final_depth
	end

	private
		def planned_route
			@_planned_route ||= begin
				input = File.open("day2.txt")
				input.readlines.map(&:chomp)
			end
		end
end

puts Navigation.final_position
