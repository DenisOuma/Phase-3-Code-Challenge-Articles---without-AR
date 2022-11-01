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
