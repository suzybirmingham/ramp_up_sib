## Week 3 Homework
## Part 1
#
## Research the following rubygems and give examples of how you might use them: rails, nokogiri, facebook, twitter.
#
#
# rails - The Rails gem could be used to build an app or a website that involves a database. The benefit of 
#  Rails is its efficiency and the ability to make changes quickly.
#
# nokogiri - I want to build a blog that looks like designlovefest.com. I can use the nokogiri gem to read 
#  he raw HTML and get scraping!
#
# facebook - I want to allow visitors of my site to be able connect to facebook and  to post to facebook, 
#  sing the Koala gem, I can access all of Facebook's API's.
#
# twitter - I want to stay on top of all things knitting and rather than troll through twitter everyday, I'd 
#  like to pull all tweets from my favorite knitters and those containing certain hashtags once a day. I can use 
#  the twitter gem to do that.
#
## Part 2
#
class Person
	def mind
		puts "I think therefore I am."
	end
end

class RampUpStudent < Person
	def questions
		puts "What??"
	end
	def frustration
		puts "Oof!!"
	end
	def success
		puts "Woohoo!!"
	end
end

class RampUpInstructor
	def answers
		puts "I know. Let me show you."
	end
	def patience
		puts "Let's step back and start from the beginning."
	end
end

Person.new.mind
RampUpStudent.new.questions
RampUpStudent.new.frustration
RampUpStudent.new.success
RampUpInstructor.new.answers
RampUpInstructor.new.patience

## Part 3 : How many <div> objects are there?
#
require 'rubygems'
require 'nokogiri'
require 'open-uri'
page = Nokogiri::HTML(open("http://rampup.startupinstitute.com/"))
	puts page.class
	puts page.search('div').size

#=> 12

## Part 3_1 : Can you find the <div> object with id=“content”?
#
require 'rubygems'
require 'nokogiri'
require 'open-uri'
page = Nokogiri::HTML(open("http://rampup.startupinstitute.com/"))
puts page.class

puts page.css('div').size

puts page.at_css('div#content')



