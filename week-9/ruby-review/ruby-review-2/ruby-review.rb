
# Introduction to Inheritance
require 'date'

# I worked on this challenge [by myself, with: ].


# Pseudocode




# # Initial Solution

# class GlobalCohort
#   #your code here
#   attr_reader
#   def initialize(students, name, p0_start_date, immersive_start_date, graduation_date, email_list, num_of_students)
#   	@students = students
#   	@name = name
#   	@p0_start_date = p0_start_date
#   	@immersive_start_date = immersive_start_date
#   	@graduation_date = graduation_date
#   	@email_list = email_list
#   	@num_of_students = num_of_students
#   end

#   def add_student(name)
#   	@students << name
#   end

#   def remove_student(name)
#     @students.remove(name)
#   end

  
#   def currently_in_phase
#     if Date.today < immersive_start_date
#          return 0
#        elsif Date.today >= immersive_start_date && Date.today < immersive_start_date + 21
#          return 1
#        elsif Date.today >= immersive_start_date + 21 && Date.today < immersive_start_date + 42
#          return 2
#        elsif Date.today >= immersive_start_date + 42 && Date.today < immersive_start_date + 63
#          return 3
#        end
#   end

#   def graduated?
#     Date.today >= @graduation_date ? true : false
#   end

# end

# class LocalCohort < GlobalCohort
#   #your code here
#   def initialize(students, name, p0_start_date, immersive_start_date, graduation_date, email_list, num_of_students, city)
#   	super(students)
#   	super(name)
#   	super(p0_start_date)
#   	super(immersive_start_date)
#   	super(graduation_date)
#   	super(email_list)
#   	super(num_of_students)
#   	@city = city
#   end

# end

#dirver code

chorusfrogs = GlobalCohort.new(["mo", "mira"], "Chorus Frogs", Date.new(2015,10,19), Date.new(2015,12,28), Date.new(2016,3,3), ["mo@mo.com", "mira@mira.com"],100)

# Refactored Solution

class GlobalCohort
  #your code here
  attr_reader
  def initialize(students, name, p0_start_date, immersive_start_date, graduation_date, email_list, num_of_students)
    @students = students
    @name = name
    @p0_start_date = p0_start_date
    @immersive_start_date = immersive_start_date
    @graduation_date = graduation_date
    @email_list = email_list
    @num_of_students = num_of_students
  end

  def add_student(name)
    @students << name
  end

  def remove_student(name)
    @students.remove(name)
  end

  
  def currently_in_phase
    if Date.today < immersive_start_date
         return 0
       elsif Date.today >= immersive_start_date && Date.today < immersive_start_date + 21
         return 1
       elsif Date.today >= immersive_start_date + 21 && Date.today < immersive_start_date + 42
         return 2
       elsif 
         return 3
       end
  end

  def graduated?
    Date.today >= @graduation_date ? true : false
  end

end

class LocalCohort < GlobalCohort
  #your code here
  def initialize(students, name, p0_start_date, immersive_start_date, graduation_date, email_list, num_of_students, city)
    super(students)
    super(name)
    super(p0_start_date)
    super(immersive_start_date)
    super(graduation_date)
    super(email_list)
    super(num_of_students)
    @city = city
  end

end


#dirver code

chorusfrogs = GlobalCohort.new(["mo", "mira"], "Chorus Frogs", Date.new(2015,10,19), Date.new(2015,12,28), Date.new(2016,3,3), ["mo@mo.com", "mira@mira.com"],100)



# Reflection
=begin

What concepts did you review in this challenge?

In this challenege we reviewd classes. We learned about enheritance in Ruby. This is unique feature Ruby has
that allows a coder to write DRY code by allowing you to have access to methods and variables of another
class that you "inherit" from. Using the super key word, you can then assign variables you've created in order
to cut down repeating code but having functionality avialable in another class.

What is still confusing to you about Ruby?

I thin I'm still a little confused about how Ruby handles class interactions. It seems a bit messy because
you are creating objects of different classes and passing them to each other. 

What are you going to study to get more prepared for Phase 1?

Before phae 1 starts I will definetly study classes more. I want to look more into how they are used in practical
programming rather than just the stuff we've done at DBC. I want to see how RAILS uses those properties of Ruby as
well. 
  
=end