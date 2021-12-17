puzzle_input = File.open("day3part1.txt")

@diagnostic_report = puzzle_input.readlines.map(&:chomp)

def frequencies(position)
    @diagnostic_report.map { |v| v[position] }.tally
end

gamma = ""
epsilon = ""

12.times do |position|
    sorted_frequencies = frequencies(position).sort_by { |k, v| v }.to_h

    epsilon << sorted_frequencies.keys.first
    gamma << sorted_frequencies.keys.last
end

puts gamma.to_i(2) * epsilon.to_i(2)