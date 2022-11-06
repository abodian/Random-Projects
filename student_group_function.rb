# a function to work out how many student groups you need
# with the option to define how many in a group
# group is full before moving onto next one

def number_of_groups()
    puts "Please type how many learners you have in your cohort: "
    student_numbers = $stdin.gets.to_i
    puts "Please type the maximum learners allowed in a group: "
    maximum_group_size = $stdin.gets.to_i

    puts "You have #{student_numbers} learners in your cohort, with a maximum group size of: #{maximum_group_size} learners."

    group_number_remainder = student_numbers.remainder(maximum_group_size)
    group_number = (student_numbers / maximum_group_size.to_f).ceil
    
    if group_number_remainder == 0
        puts "You will need #{group_number} full groups with no further space"
    else
        puts "You will need #{group_number - 1} full groups and 1 partially full group, with an overall of #{group_number} groups."
        puts "The partially full group has #{group_number_remainder.floor} spaces left."
    end
end


number_of_groups
