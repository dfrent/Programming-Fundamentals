# define a method with percentage as an argument 
# returns a letter for that percentage
# ["A","A-","A+", "B","B-","B+", "C","C-","C+", "D","D-","D+", "F"]
# letter -> percentage 

# def user_score(percentage)
# 	grades = ["a+"..."f"] && ["100%"..."0%"]
#    return "a+" for "100%"
# end

# user_input = input_percent
# outputs = user_score


def user_score(percentage)
	grades = ["A+","A","A-","B+","B","B-","C+","C","C-","D+","D","F"]
	averages = [100, 95, 90, 85, 80, 75, 70, 65, 60, 55, 50, 0]
	percentage = percentage.to_i
	# puts percentage.inspect
	averages.each_with_index do |average, index| 
		# puts "#{average}:#{index}"
		if percentage >= average
		# 	puts "#{percentage} is greater than #{average}"
		# else 
		# 	puts "#{percentage} is less than #{average}"
		return "#{grades[index]}"
		end
	end


end

puts "whats your grade percentage?"
user_input = gets.chomp
puts "your grade is #{user_score(user_input)}"