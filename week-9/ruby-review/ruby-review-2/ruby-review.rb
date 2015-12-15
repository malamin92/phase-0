
# Introduction to Inheritance
require 'date'

# I worked on this challenge [by myself, with: ].


# Pseudocode




# Initial Solution

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
       elsif Date.today >= immersive_start_date + 42 && Date.today < immersive_start_date + 63
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

# Refactored Solution






# Reflection