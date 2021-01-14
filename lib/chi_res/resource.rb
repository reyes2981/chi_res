class ChiRes::Resource
    attr_accessor :name, :tag, :description
    @@all = []

    def initialize(name, tag)
        @name = name
        @tag = tag
        #notify tag about the resource
        add_to_tag
        save #create a save method for better orginization 
    end

    def self.all
        @@all
    end

    def add_to_tag
        #binding.pry
        @tag.resources << self unless @tag.resources.include?(self)
    end

    def save
        @@all << self
    end

end

#item has one tag(resource)
#tag has many items