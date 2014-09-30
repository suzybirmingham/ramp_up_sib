## Week 4 Homework : CSV


# Download the sample CSV file from here. 

# Do the following:

# require ‘csv’

# f = File.open(‘path/to/your/file’) (C:/path/to/file if on Windows)

# data = CSV.parse(f.read)

# ----
##  Using what you’ve learned about arrays, and knowing that data[0] will tell you the column headers, and that each item in the ‘data’ array is an array itself (try ‘data[0][0]’), find:
#
#     1. All of the customer_company_name values
#
#     2. The sum of the transaction_charge values
#
## Hint:
#
#  Your code will likely look like:
#
#   data.each do |row|
#     some ruby code
#   end

## Write Ruby code to do the following: Manipulate a hash with nested arrays
##-------------------------------

require 'csv' # gives access to the data 

Company_Name_Column = 2 # Location the of data of interest in csv file
Transaction_Charge_Location = 21 # Same as above
File_Name = 'transaction.csv'  

def customer_company_names(data) # Defining function to gather Customer Company Names
    names = Array.new # Creating a new array to store the company names
    data.each do |row| # Iterating thru data from csv file by row
	names << row[Company_Name_Column] # Puts values of column 2 into variable names
    end
    names
end

def transaction_charge_total(data) # Defining function to gather Transaction Charge Total
    total = 0
    data.each do |row| # same as line 40
	total += row[Transaction_Charge_Location].to_i
    end
    total # Value of total calcualtion of row 21
end


f = File.open(File_Name) 
data = CSV.parse(f.read)


puts 'Customer Company Names:' + customer_company_names(data).to_s  # Customer Company names
puts 'Total Transaction Charge:' + transaction_charge_total(data).to_s  # Total calculation then converted to a string to print


