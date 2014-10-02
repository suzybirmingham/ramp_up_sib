## Week 5 Homework 
## Part 2
#
# Try writing a program which asks us to type in as many words as we want (one word per line, continuing until we 
# just press Enter on an empty line), and which then repeats the words back to us in reverse alphabetical order
#
## Get stuck or want to go deeper, check out the tutorial at http://ruby.bastardsbook.com/chapters/ifelse/
#
#


user_input = Array.new

puts " "
puts "What are your favorite words?"
puts " "

while line = gets
  if line.chomp!.empty?
    puts "Thanks! And just for fun, here they are in reverse alphabetical order: \n #{user_input.sort.reverse}"
    exit
  else
    user_input << line
  end
end

