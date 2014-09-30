## Week 5 Homework: 
## Part 1: Booleans
#
# Implement the following functionality using if/else statements and booleans.
#
#  Output "Big" if x is greater than 10
#    
#  Output "Small" if x is less than or equal to 10, but not negative
#    
#  If x is greater than 14 but less than 100, and x is even, output "Dog". If it is greater than or equal to 
#  100 and it is less than or equal to 1000, or, if x is odd, then output "Elephant". Otherwise, output "Bananas"
#    

def big_small_animal_fruit(x)

	if x > 10
		puts "Big"
	end

	if x <= 10 && x.even?
		puts "Small" 
	end

	if x > 14 && x < 100 && x.even?
		puts "Dog"
	elsif (x >= 100 && x <= 1000) || x.odd? # x % 2 != 1 (another way to put odd)
		puts "Elephant"
	else 
		puts "Bananas" # this need to be included in line 23 if statement too
	end

 end

 ## Program in action

 big_small_animal_fruit(12)
 big_small_animal_fruit(8)
 big_small_animal_fruit(7)
 big_small_animal_fruit(72)
 big_small_animal_fruit(999)
 
    


