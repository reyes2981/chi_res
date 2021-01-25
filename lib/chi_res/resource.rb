class ChiRes::Resource
    attr_accessor :name, :tag, :description
    @@all = []

    def initialize(name, tag)
        @name = name
        @tag = tag
        @description = description
        #notify tag about the resource
        add_to_tag
        save #create a save method for better orginization 
    end
    

    def self.all
        @@all
    end

    def add_to_tag
        @tag.resources << self unless @tag.resources.include?(self)
    end

    def add_detail
        @description.resources << self unless @description.include(self)
    end

    def save
        @@all << self
    end

end

#item has one tag(resource)
#tag has many items

#def get_resource_details
 #   ChiRes::Scraper.scrape_description(self) if @description.empty?
#end
