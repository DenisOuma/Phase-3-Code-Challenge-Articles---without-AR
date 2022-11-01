require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
###  WRITE YOUR TEST CODE HERE ###
first_author = Author.new("John")
first_magazine = Magazine.new("Sports", "John")
second_magazine = Magazine.new("Politics", "John")
third_magazine = Magazine.new("Cooking", "John")
# Last articles.
first_article = Article.new(first_author, first_magazine, "First Title")
second_article = Article.new(first_author, second_magazine, "Second Title")

# new articles
first_author.add_article(first_magazine, "New Content")
first_author.add_article(first_magazine, "New Content 2")
first_author.add_article(first_magazine, "New Content 3")
first_author.add_article(second_magazine, "New Content 4")
first_author.add_article(third_magazine, "New Content 5")

#end of test code

### DO NOT REMOVE THIS
binding.pry
0