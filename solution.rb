# Please copy/paste all three classes into this file to submit your solution!

# The code below is provided for your convenience. Feel free to modify it, but
# < ============================================== ARTICLE CLASS ============================================== >
# Beggining of Article class
class Article
    attr_reader :magazine_title, :magazine_year
    # List of all articles
    @@all_magazines = []

    def initialize(magazine_author, first_magazine, magazine_title)
        @magazine_author = magazine_author
        @magazine_title = magazine_title
        @first_magazine = first_magazine
        @@all_magazines << self
    end
    def self.all
        @@all_magazines
    end
    def author
        self.magazine_author
    end
    def title
        self.magazine_title
    end
    def year
        self.first_magazine
    end
end
# End of Article class

# < ============================================== AUTHOR CLASS ============================================== >
# Beggining of Author class

require_relative './module'

class Author
  attr_reader :author_name, :book
  extend Finder

  @@all_authors = []

  def initialize(author_name)
    @author_name = author_name
    @@all_authors << self
  end

  def self.all
    @@all_authors
  end

  def articles
    Article.all.select do |article|
      article.author == self.author_name
    end
  end

    def magazines
      Magazine.all.select do |magazine|
        magazine.author == self.author_name
      end
    end
    def add_article(title, content)
      Article.new(self.author_name, title, content)
    end

    def topics
      magazines.map do |magazine|
        magazine.category
      end
    end
  
end
# End of Author class

# ============================================== MAGAZINE CLASS ============================================== >
# Beggining of Magazine class
require_relative './module'

class Magazine
  attr_accessor :category, :author_name
  extend Finder
  @@all_magazines = []

  def initialize(category, author_name)
    @category = category
    @author_name = author_name
    @@all_magazines << self
  end

  def self.all
    @@all_magazines
  end

  def articles
    Article.all.select do |article|
      article.magazine == self.category
    end
  end

  def authors
    Author.all.select do |author|
      author.author_name == self.author_name
    end
  end

  def magazine_contributors
    authors.map do |author|
      author.author_name
    end
  end

  def article_titles
    articles.map do |article|
      article.title
    end
  end

  def article_contributors
    prime_author = []
    author.tally.each do |author, count| count > 2 && prime_author << author
    end
  end
end

# End of Magazine class
