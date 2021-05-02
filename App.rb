# PRINTING 

puts "Hello" # Adds new line
print "World"
puts "!"

# VARIABLES

name = "Mike"
age = 30
gpa = 4.3
is_tall = true

# CASTING AND CONVERTING

puts 3.14.to_i # to integer, 3
puts 3.to_f # to float, 3.0
puts 3.0.to_s # to string, 

puts 100 + "50".to_i # to integer, 3
puts 100 + "50.99".to_f # to float, 150.99 

# STRINGS

greetings = "Hello"

puts greetings.length # 5
puts greetings[0] # H
puts greetings.include? "llo" # true
puts greetings.include? "z" # false
puts greetings[1, 3] # ell

# NUMBERS

puts 2 * 3
puts 2**3
puts 10 % 3
puts 1 + 2 * 3
puts 10/3.0 # ints and doubles. Get decimal back. 


num = 10
num += 10
puts num

num = -26.8
puts num.abs() # absolute value function 
puts num.round() # round 

puts Math.sqrt(144) # square root
puts Math.log(0) # log

# USER INPUT 

puts "Enter your name: "
name = gets.chomp # store result of gets. Get information from console. Add .chomp for newline character
puts "Hello #{name}, how are you"

puts "Enter first num: "
num1 = gets.chomp
puts "Enter second num: "
num2 = gets.chomp
puts num1.to_f + num2.to_f

# ARRAYS

lucky_numbers = [4, 8, "fifteen", 16, 23, 42.0]
lucky_numbers[0] = 90
puts lucky_numbers[0]
puts lucky_numbers[1]
puts lucky_numbers[-1]

puts "\n\n"
puts lucky_numbers[2, 3] # starting index, length 
puts "\n\n"
puts lucky_numbers[2..4] # grab elements 2 through 4

puts lucky_numbers.length

# N-DIMENTIONAL ARRAYS

number_grid = [[1,2], [3, 4]]
number_grid[0][0] = 99
puts number_grid[0][0]
puts number_grid[0][1]

# ARRAY METHODS

friends = []
friends.push("Oscar")
friends.push("Angela")
friends.push("Kevin")

friends.pop # Kevin is removed
puts friends
puts "\n"

puts friends.reverse
puts "\n"

puts friends.sort
puts "\n"

puts friends.include? "Oscar"

# METHODS/FUNCTIONS

def add_numbers(num1, num2=99)
    return num1 + num2 

end

sum = add_numbers(4, 3)
puts sum

# CONDITIONALS

is_student = false
is_smart = false

if is_student and is_smart
    puts "You are a student"
elsif is_student and !is_smart
    puts "You are not a smart student"
else 
    puts "You are not a student and not smart"
end

if 1 > 3
    puts "number comparison was true"
end

if "a" > "b" # == 
    puts "string comparison was true"
end 

# SWITCH STATEMENTS

my_grade = "A"
case my_grade
    when "A"
        puts "You pass"
    when "F"
        puts "You fail"
    else 
        puts "Invalid grade"

end

# DICTIONARIES

test_grades = {
    "Andy" => "B+", # key => value
    :Stanley => "C", # colon  
    "Ryan" => "A",
    3 => 95.2
}

test_grades["Andy"] = "B-"
puts test_grades["Andy"]
puts test_grades[:Stanley]
puts test_grades[3]

# WHILE LOOPS

index = 1
while index <= 5
    puts index
    index += 1
end

# FOR LOOPS

for index in 0..5
    puts index
end 

5.times do |index|
    puts index
end 

lucky_nums = [1, 2, 3, 4]
for n in lucky_nums
    puts n
end 

lucky_nums.each do |n|
    puts n
end 

# EXCEPTION CATCHING

# num = 10/0

# begin 
#     num = 10/0
# rescue 
#     puts "Error"
# end

# begin 
#     num = 10/0
# rescue ZeroDivisionError
#     puts "Error"
# rescue 
#     puts "All other errors"
# end 

# raise "Made Up Exception"

# OBJECT ORIENTED WITH CONSTRUCTOR 

class Book 
    attr_accessor :title, :author # attr_accessor - attributes 
    def initialize(title, author)
        self.title = title
        @author = author
    end 

    def title=(title)
        puts "Set"
        @title = title
    end 

    def title
        puts "Get"
        return @title
    end 

    def readBook()
        puts "Reading #{self.title} by #{@author}"
    end
end 

book1 = Book.new("Harry Potter", "JK Rowling")
puts book1.title

# INHERITANCE WITH CONSTRUCTORS

class Chef 

    attr_accessor :name, :age # attr_accessor - attributes 
    def initialize(name, age)
        @name = name
        @age = age
    end 

    def make_chicken()
        puts "The chef makes chicken"
    end 

    def make_salad()
        puts "The chef makes salad"
    end 

    def make_special_dish()
        puts "The chef makes a special dish"
    end 
end

class ItalianChef < Chef 

    attr_accessor :country # attr_accessor - attributes 
    def initialize(name, age, country)
        @country = country
        super(name, age)
    end 

    def make_pasta()
        puts "The chef makes pasta"
    end 

    def make_special_dish() 
        puts "The chef makes special italian dish"
    end 
end 

my_chef = Chef.new("Gordan", 55)
my_chef.make_chicken()

my_italian_chef = ItalianChef.new("Gordan", 55, "Italy")
my_italian_chef.make_chicken()
puts my_italian_chef.age;

