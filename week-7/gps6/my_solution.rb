require_relative 'state_data'
# Virus Predictor

# I worked on this challenge [by myself, with: Coleby Kent].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
=begin
Require relative allows you to load a file that is in the same directory as the file that you are 
loading it into. This allows you to omit a path to the file and just use the name of the file instead. 
Require on the other hand, you have to include the entire path to the file you are refering to.
=end

class VirusPredictor

  # Creates a new instance of the Virus protector, taking in 3 arguments and setting them as an instance variable.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #Calling two different methods: predicted_deaths and speed_of_spread.
  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
  end

  
  private #anything after this is only able to be referred to from inside the class.

  #Taking 3 different arguments: population_density, population, and state.
  #Depending on the density, calculates the number of deaths based on a specific formula.
  #Print a string
  def predicted_deaths #(population_density, population, state)
    # predicted deaths is solely based on population density
    fractions = [0.4, 0.3, 0.2, 0.1, 0.05]
    density = [200, 150, 100, 50, 0]
    
    index = 0
    while index < density.length
      if @population_density >= density[index]
        number_of_deaths = (@population * fractions[index]).floor
        break
      end
        index += 1
    end
    
    # if @population_density >= density[0]
    #   number_of_deaths = (@population * fractions[0]).floor
    # elsif @population_density >= density[1]
    #   number_of_deaths = (@population * fractions[1]).floor
    # elsif @population_density >= density[2]
    #   number_of_deaths = (@population * fractions[2].floor
    # elsif @population_density >= density[3]
    #   number_of_deaths = (@population * fractions[3]).floor
    # else
    #   number_of_deaths = (@population * fractions[4]).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #Takes two arguments: population_density and state.
  #Depending on density, calculates the speed in which the virus will spread.
  #Puts a string
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    index = 0
    density = [200, 150, 100, 50, 0]
    speed = [0.5, 1, 1.5, 2, 2.5]

    while index < density.length
      if @population_density >= density[index]
        puts " and will spread across the state in #{speed[index]} months.\n\n"
        break
      end
      index += 1
    end
    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end


  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |key, value| 
  VirusPredictor.new(key, value[:population_density], value[:population]).virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
=begin 
What are the differences between the two different hash syntaxes shown in the state_data file?
  
  In the outer hash, the => hash rocket is used. In the second hash, the newer syntax is used
  where you can use colons to sperate keys and values. In my opinion, the syntax using the
  colons are much cleaner that the ones using the hash rocket. However, the limitation for the
  new syntax is that you can only use symbols as the keys.

What does require_relative do? How is it different from require?

  Require relative allows you to load a file that is in the same directory as the file that you are 
  loading it into. This allows you to omit a path to the file and just use the name of the file instead. 
  Require on the other hand, you have to include the entire path to the file you are refering to. The
  context of the file will be loaded to the scop of your entire program.

What are some ways to iterate through a hash?

  You can use the .each method to itterate through a hash. In this case you go through each key
  and value, you can do whatever you want both. You can also use other enumerables such .map
  or each_key, each_value to go through each key or value. In our case, we just used the .each method.

When refactoring virus_effects, what stood out to you about the variables, if anything?

  I noticed right away that the arguments being passed to the calling functions were instance
  variables. This is not necessary because the instance variables already exist, making it redundant
  to pass them to a function, because instance variables can be referd to from anywhere in the class.

What concept did you most solidify in this challenge?
  
  In this challenge, the idea of refactoring definetly god solidified to me. Refactoring the two
  main methods was a big part of our code, and at first I was having trouble understanding it
  but with the help from my guide and pair, I was able to visualize and understand how we could
  refactor the code. Other than that, creating new instances of objects definetly got solidified
  as we smoothly came up with a way to refactor the initial manual driver code.

=end