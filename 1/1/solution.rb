calibration_values = []

f = File.new("input.txt")

f.readlines.each do |line|
  digits = line.gsub(/[a-zA-Z]/, "")
  calibration_values << Integer(digits[0] + digits[digits.length - 2])
end

puts calibration_values.sum
