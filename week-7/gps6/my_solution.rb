# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative loads the file that is in the same (i.e. relative) location as this file.
# require loads the file once only, with explicit reference to the file

require_relative 'state_data'

class VirusPredictor

# This initializes the class with the specified information
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Method that predicts the virus impact by calling two other methods in the class - predicted_deaths and speed_of_spread.
  def virus_effects
  	# Calling private methods defined in class. No arguments needed as 
    predicted_deaths
    speed_of_spread
  end

# Method to get data for all states
  def all_states
    STATE_DATA.each_key do |key|
    	a_state()
    end
  end


  def each_state(state_name)
    @state_name = state_name
    
  end

# Indicates methods that are private and within the context of the object instance
  private
# Method that predicts the number of deaths within a state based on arguments such as population density and population
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
    	when (0...50)
    		number_of_deaths = (@population * 0.05).floor
    	when (50...100)
    		number_of_deaths = (@population * 0.1).floor
    	when (100..150)
    		number_of_deaths = (@population * 0.2).floor
    	when (150..200)
    		number_of_deaths = (@population * 0.3).floor
    	else 
    		number_of_deaths = (@population * 0.4).floor
    	end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
    
  end

#Method that predicts the speed of spread of the virus within a state based on population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    case @population_density
    when (0...50)
    	speed = 2.5
    when (50...100)
    	speed = 2
    when (100...150)
    	speed = 1.5
    when (150...200)
    	speed = 1
    else 
    	speed = 0.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

STATE_DATA.each do |state, info|
	virus_report = VirusPredictor.new(state, info[:population_density], info[:population])
	virus_report.virus_effects
end

#=======================================================================
# Reflection Section
=begin 
What are the differences between the two different hash syntaxes shown in the state_data file?
- The first hash (outer hash) uses traditional strings as hash keys. The second hash (inner hash) uses symbols as hash keys

What does require_relative do? How is it different from require?
- Require_relative loads the file that is in the same (i.e. relative) location as the file that contains this command
- Require loads the file as well, but with a more complicated way to look up the file

What are some ways to iterate through a hash?
- hash.each do |key, value| is the most straightforward way to iterate through a hash. There are also variants such as .each_key, .each_value to obtain the key and value in the hash respectively.

When refactoring virus_effects, what stood out to you about the variables, if anything?
- The variables are instance variables which are accessible by all methods within an instance of the class.
- Thus, there is no need for arguments to be passed

What concept did you most solidify in this challenge?
- I solidified the concept of iterating through a hash, and also making sure that the code base is DRY.
- It is important to look through the code base and refactor to remove any reptitions in code.
=end
