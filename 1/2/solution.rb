NUMBERS = {
  "one" => "1",
  "two" => "2",
  "three" => "3",
  "four" => "4",
  "five" => "5",
  "six" => "6",
  "seven" => "7",
  "eight" => "8",
  "nine" => "9"
}

calibration_values = []

f = File.new("input.txt")

f.readlines.each do |line|
  first_number = NUMBERS.fetch(
    line.scan(/#{NUMBERS.keys.join("|")}|#{NUMBERS.values.join("|")}/)[0]
  ) { |number| number }
  last_number = NUMBERS.fetch(
    line.reverse.scan(/#{NUMBERS.keys.map(&:reverse).join("|")}|#{NUMBERS.values.join("|")}/)[0].reverse
  ) { |number| number }

  calibration_values << Integer(first_number + last_number)
end

puts calibration_values.sum
