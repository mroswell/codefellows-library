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
# trying to glean from http://stackoverflow.com/questions/4370960/what-is-attr-accessor-in-ruby
attr_accessor :enshelve
attr_accessor :unshelve

   def initialize(bookname, shelf="not-shelved")
    @bookname = bookname
    @shelf = shelf
   end
=begin
   def unshelf
      this.enshelve("not-shelved") 
   end
=end
   
end

# Instantiate Library, Shelf, and Book 
library = Library.new("Old Alexandria", 54321)
shelf = Shelf.new("Nutrition",500)
rawbook1  = Book.new("Raw Food Made Easy", "Nutrition") 

