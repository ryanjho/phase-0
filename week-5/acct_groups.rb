# 5.6 Create Accountability Groups

# Release 1: Pseudocode
=begin
Input: A list of names from Island Foxes 2015 Cohort
Output: Form groups of minimum 3 and maximum 5 people
Steps:
1. Create a hash to store each member's name and accountability group number
2. Group number will be the hash key, while hash value will be an array of names
3. Each group needs to have a minimum of 3 people and a maximum of 5 people. Ideal group size is either 4 or 5.
4. 

=end

# Release 2: Initial Solution
def create_groups
	islandfoxes_cohort = ['Syema Ailia','Alan Alcesto','Daniel Andersen','James Artz','Darius Atmar','Brian Bensch','Nicola Beuscher','Kris Bies', 'Alex Blair', 'Logan Bresnahan','William Brinkert', 'Un Choi', 'Scott Chou','Bernice Anne W Chua','Abraham Clark','Jon Clayton','Kevin Corso','Jacob Crofts','Amaar Fazlani','Solomon Fernandez','Edward Gemson','Jamar Gibbs','Chris Gomes','Will Granger','Christopher M. Guard','Ryan Ho','Igor Kazimirov','Walter Kerr','Karla King','Becky Lehmann','Malia Lehrer','Carolina Medellin','Timothy Meixell','Chris Miklius','Joshua Monzon','Shea Munion','Bryan Munroe','Trevor Newcomb','Aleksandra Nowak','Fatma Ocal','Van Phan','Luis Fernando Plaz','Natalie Polen','Alicia Quezada','Jessie Richardson','Nimi Samocha','Zach Schatz','Tal Schwartz','Pratik Shah','Josh Shin', 'Parminder Singh', 'Shawn Spears','Sasha Tailor','Nil Thacker','Natasha Thapliyal','Sabrina Unrein','Brian Wagner','Clinton Weber','Gregory Wehmeier','Michael Whelpley', 'Alexander Williams', 'Peter N Wood','Ryan Zell']
	max_group_size = 5
	min_group_size = 3
	group_counter = islandfoxes_cohort.length / max_group_size + 1 if min_group_size
	acct_groups = Hash.new("Non-existeng group number")
	for number in 1..group_counter do
		acct_groups["Group:#{number}"] = []
		while acct_groups["Group:#{number}"].size < max_group_size do
			acct_groups["Group:#{number}"] << islandfoxes_cohort.pop
			p acct_groups
		end
	end
	return acct_groups
end


# Release 4: Refactored Solution

# Release 5: Driver Code

# Release 6: Reflection
=begin
What was the most interesting and most difficult part of this challenge?
- The most interesting part of this challenge is to work with a large aray

Do you feel you are improving in your ability to write pseudocode and break the problem down?
- 
Was your approach for automating this task a good solution? What could have made it even better?
- 
What data structure did you decide to store the accountability groups in and why?
- 
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
- 
=end