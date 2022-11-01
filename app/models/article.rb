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