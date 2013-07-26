#!/usr/local/bin/ruby -w

# Bad Ruby code, written BEFORE taking the training. 
# Googling, plus guesses. 

# define Library, Shelf, and Book classes

class Library
  def initialize(libname, numshelves)
   @libname = libname
   @numshelves = numshelves
  end

  # print list of books within the library (or try to!)
  def listBooks
    # not sure how we go from Book class to books array, so this method does not work, 
	# because there is no books array.
   books.each do |book|
    puts book
   end
  end

  def countshelves
  puts shelfs.length
  end
end

=begin
  # not sure if we add and remove a shelf from the library class or the shelf class
  def addShelf(shelf)
	this.push(shelf)
	end
	
	def removeShelf(shelf)
    this.delete(shelf)  
	end
=end
	
class Shelf
   def initialize(shelfname, booksonshelf)
      @shelfname = shelfname
      @booksonshelf = booksonshelf
   end
end

class Book

=begin
# trying to glean from http://stackoverflow.com/questions/4370960/what-is-attr-accessor-in-ruby
# But maybe this is more for "adjective"-style attributes, as opposed to action methods.
attr_accessor :enshelf
attr_accessor :unshelf
=end

   def initialize(bookname, shelf="not-shelved")
    @bookname = bookname
    @shelf = shelf
   end

   def enshelf(shelf)
     @shelf = shelf
   end

   def unshelf
      this.enshelf("not-shelved") 
   end
   
end

# Instantiate Library, Shelf, and Book 
library = Library.new("Old Alexandria", 54321)
shelf = Shelf.new("Nutrition",500)
rawbook1  = Book.new("Raw Food Made Easy", "Nutrition") 

=begin
# my listBooks method doesn't work:
# main.rb:16:in `listBooks': undefined local variable or method `books' for # (NameError)
# from main.rb:73
library.listBooks
=end
