module Finder
    def initialize
        self.all << self
    end

    def select_name(name)
        self.all.select do |instance|
            instance.name == name
        end
    end
end