# Build a Ruby class called Book. Objects of the Book class must have two attributes: title and chapters. Objects must have two methods: add_chapter and chapters. The add_chapter method adds a chapter by giving it a title. The chapters method should display the number of chapters and lists all the chapters as in:
#
# book = Book.new
# book.title = "user input"
# book.add_chapter("user input chapter 1")
# book.add_chapter("user input chapter 2")
# book.chapters
# # This should print:
# # Your book: My Awesome Book has 2 chapters:
# # 1. My Awesome Chapter 1
# # 2. My Awesome Chapter 2
  # {title: "", chapters: ["name1","name2","name3"]}

  class Book
    attr_accessor :title
    attr_accessor :chapters
    attr_accessor :value # array of book chapters [name1, name2, name3]

    def initialize
      @title = @chapters = ""
      @value = []
    end

    def title
      print "What's the title of the book?"
      @title = gets.chomp.capitalize!
    end

    def add_chapter
      print "The name of the chapter?"
      @chapters = gets.chomp.capitalize!
      @value << @chapters
      p @value
    end

    def chapters
      l = @value.length
      print "Your book: #{@title} has #{l} chapers: "
      @value.each do |i|
        print "#{@value.index(i)}. #{i} " #index number of the array and the value at the index
      end
    end
  end

book = Book.new
book.title
book.add_chapter
book.add_chapter
book.chapters
