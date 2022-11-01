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