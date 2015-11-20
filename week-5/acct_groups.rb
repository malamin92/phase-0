=begin 
Pseudocode:
	Input = An array of strings.
	Output = A hash with groups and array of members.
	Steps:
		1. Take an array input.
		2. Determine how many groups will be needed by dividing the size of the array  by 4 (the amount of people in a group).
		3. Make a hash with default value as an empty array.
		4. Make keys for all the group names
		5. Push members of the array into the hash as long as the hash has less than five members.
		6. Return the hash as the answer.
=end

# Take a file with member names and turns it into an array.
def get_member_names
	File.readlines("cohort_members.txt").collect{|name| name.gsub("\n", "")}
end


#Initial soultion:
=begin
def get_conhort_groups(names_array)
	number_of_groups = names_array.size/4
	groups_hash = Hash.new
	i = 1
	while(i <= number_of_groups)
		groups_hash["group #{i}"] = []
		i += 1
	end

	j = 1
	names_array.each do |cohort_member|
		j = 1 if j > number_of_groups
		groups_hash["group #{j}"] << cohort_member
		j += 1
	end
	groups_hash
end

puts get_conhort_groups(get_member_names)
=end

#Refacotred: 

=begin
If you run this program three times in a row, will the program give you three different outputs?

	Yes, in my initial soultion I only had it so that it makes groups and goes in order of the array, however
	when I refractor I will make it so that every time a group is created, the members of the groups will be much
	more different. This will leave the user with much more options if they want to make groups in the future.

Should the program store past outputs?

	The way I set up my program, the user can store the results hash in a variable and refer to it anytime they 
	want in the future. The user can also access just a group instead of the whole hash also.

If one person were to leave the cohort, how would the accountability groups change?

	If one person wants to leave the cohort, then the user can just run the program again to get new groups, but
	this is not necessary because all th groups are designed to have at least 4 members, which means that if one
	leaves, then the groups will have at least a minimum of 3 members. If one more person is added to the cohort.
	they can just be added to a group that has 4 members and hence still meeting requrements.

How do you decide when you're done? You'll need to decide. This is much more challenging than you probably think, especially since there are no pre-written tests.
	
	I decided that I am done when I am consistently able to make groups with different outputs and save those groups
	and have access to them anytime I want. 

=end

# Take a file with member names and turns it into an array.
# Take the file name so that the user can work with any files.
def get_member_names(file_name)
	File.readlines(file_name).collect{|name| name.gsub("\n", "")}.shuffle
end

#Get the members of each group in the form of a hash.
#The user can access each group by writing 'hash["group #"]
def get_conhort_groups(names_array)
	number_of_groups = names_array.size/4
	groups_hash = Hash.new
	i = 1
	while(i <= number_of_groups)
		groups_hash["group #{i}"] = []
		i += 1
	end

	j = 1
	names_array.each do |cohort_member|
		j = 1 if j > number_of_groups
		groups_hash["group #{j}"] << cohort_member
		j += 1
	end
	groups_hash
end






