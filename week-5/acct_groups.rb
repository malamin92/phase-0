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

#Initial soultion:
=begin
# Take a file with member names and turns it into an array.
def get_member_names
	File.readlines("cohort_members.txt").collect{|name| name.gsub("\n", "")}
end

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
	#Creates groups, this could be another funtion itself.
	number_of_groups = names_array.size/4
	groups_hash = Hash.new
	i = 1
	while(i <= number_of_groups)
		groups_hash["group #{i}"] = []
		i += 1
	end
	#Assigns members to created groups, could be stand alone function.
	j = 1
	names_array.each do |cohort_member|
		j = 1 if j > number_of_groups
		groups_hash["group #{j}"] << cohort_member
		j += 1
	end
	groups_hash
end

#To print groups neatly, line by line.
def print_groups(cohort_hash)
	cohort_hash.each do |group, members|
		puts "#{group.capitalize} : #{members}"
	end
end

#Driver Code:
accountability_groups = get_conhort_groups(get_member_names("cohort_members.txt"))
print_groups(accountability_groups)

=begin 
Sample output:
Group 1 : ["Paul Dynowski", "Matthew Oppenheimer", "Clinton Weber", "Breton Burnett", "Arthur Head"]
Group 2 : ["Nick Davies", "Lindsey Stevenson", "Mira Scarvalone", "Yi Lu"]
Group 3 : ["Kevin Jones", "Jonathan Huang", "Alex Jamar", "Monique Williamson"]
Group 4 : ["Steven Jones", "Lydia Nash", "Benjamin Shpringer", "Jack Abernethy"]
Group 5 : ["Albert Hahn", "Joseph Scott", "Reuben Brandt", "Dana Breen"]
Group 6 : ["Kerry Choy", "Mason Pierce", "Michael Du", "Joe Plonsker"]
Group 7 : ["Ting Wang", "Caroline Kenworthy", "Brenda Nguyen", "Jenna Espezua"]
Group 8 : ["Adrian Diaz", "Marcel Haesok", "David Diaz", "Katherine DiAngelo"]
Group 9 : ["Gary Tso", "Regina Wong", "Zollie Barnes", "Mohammad Amin"]
Group 10 : ["Tom McHenry", "Alex Mitzman", "Bob Dorff", "Charlotte Manetta"]
Group 11 : ["Hanah Yendler", "Thomas Huang", "Coleby Kent", "Calvin Lang"]
Group 12 : ["Nicolette Chambers", "Chris Shahin", "Jennifer Gilbert", "Luis De Castro"]
Group 13 : ["Philip Thomas", "Saundra Vanessa Castaneda", "Sean Fleming", "David Ma"]
=end

#Reflection:
=begin
What was the most interesting and most difficult part of this challenge?

	The most interesting thing was picking an approach to this problem. There could be many different
	ways in order to tackle the problem, but I wanted to make my solution as modular and flexible
	as possible. I wanted to take into account all the little things that can change in the groups
	so that my program can adapt to new conditions. The most difficult part was the pseudocoding.
	I find it quite difficult to think like a computer unless I'm actually sitting down and
	writing code, so thinking of how the code will flow before sitting down to write it
	is something I still have to work on. On that note, I will say that I think I am getting better
	at it already as we do these problems.

Do you feel you are improving in your ability to write pseudocode and break the problem down?

	Yes, I most certainly feel that way. I think I am improving in thinking more like a computer and less
	like a human being when it comes to solving problems step by step. I think I naturally tend to think
	in a very general way, but when it comes to computer I am starting to realize that you have to think in
	a more specific way in order to tackle problems. Although my pseudocode is still pretty general, I 
	have more a feel of what kind of code it will turn into later on.

Was your approach for automating this task a good solution? What could have made it even better?

	I think the way I have it now is pretty good. It is a flexible problem that can solve many different
	grouping solutions, taking into account factors like what the total amount of people in the cohort is
	and also being able to work with different files as inputs. I think this is what makes my solution 
	pretty modular, something I find valuable when evaluating code. What could have made my code even better
	I think is that if I broke certain things down even more and made the program even more modular. Also,
	there may be ruby methods that makes this task much easier that I couldn't find even after doing more research.

What data structure did you decide to store the accountability groups in and why?

	I decided to store my accountability groups in a hash. I chose a hash because it makes it very easy to
	reference each of the groups, by just typing in the group name as the key. Since a hash can hold any type
	of object, I just stored the names of the members as an array. It made sense to store all the groups in
	arrays because they are all related. Also, it gives you access to each member of thr group if you so chose
	to do this.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

	Yes, while refactoring, I learned about the shuffle method. This method takes an array and shuffles all the
	members to return a new array of random order. This added flexibitily to my program because I would not return
	the same groups all the time. I also added a print method because I thought it was necessary to see the
	groups in a nice way. 

=end


