# ARGV requires a passed command line argument
# $stdin.gets.chomp requires a user to respond to a prompt
# choosing between one or the other requires deciding when you want the user to pay attention

# irb can open and read and print the contents of a file as well as any script

# without lines 1 - 7

# filename is assigned return value of first method of Array ARGV
# this value is the name of the input txt file
filename = ARGV.first

# The File class is likely automatically included in every Ruby class automatically
# open is a method of the File class that takes 1 parameter
# the parameter is the name of the txt file
# the variable txt is assigned a File object instance
txt = open(filename)

# Puts to the console what the input txt file is using the format activator #{}
puts "Here's your file #{filename}:"
# invoke the read method of the File class on the txt instance
# the read method prints all of the lines of the file to the console (not just 1 line)
print txt.read

txt.close()



 # without lines 8-3
# Ask for more user input
print "Type the filename again: "
# use global standard input variable and invoke gets method on it
# also, use chomp to cut off carriage return
# assign user input to file_again variable
# user input is assumed to be another txt file (the same txt file as in ARGV)
file_again = $stdin.gets.chomp

# invoke open method of File class passing a string representing the file name
# store returned File object in txt_again
txt_again = open(file_again)

# invoke read method of File class and pass result to print method
# print all lines of file to console
print txt_again.read

txt_again.close()