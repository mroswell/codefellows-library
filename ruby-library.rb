#!/usr/local/bin/ruby -w

# Bad Ruby code, written BEFORE taking the training. Guesses. But I always did love books.

# define Library, Shelf, and Book classes
class Library
   # constructor
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
  
  def countBooks
    bookcount = books.length
  end
end

class Shelf
   # constructor 
   def initialize(shelfname, booksonshelf)
      @shelfname = shelfname
      booksonshelf = []
      @books = booksonshelf
   end

end

class Book
  
   # constructor
   def initialize(bookname, shelf="not-shelved")
    @bookname = bookname
    @shelf = shelf
   end
   
   def enshelf(shelf)
      @shelf = shelf
   end

   def unshelf
      this.setShelf("not-shelved") 
   end
end

#Instantiate Library, Shelf, and Book 
library = Library.new("Old Alexandria", 54321)
shelf = Shelf.new("Nutrition",500)
rawbook1  = Book.new("Raw Food Made Easy", "Nutrition") 
