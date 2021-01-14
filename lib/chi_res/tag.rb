class ChiRes::Tag
    attr_accessor :name, :resources
    @@all = []

    def initialize(name)
        @name = name
        @resources = []
        get_resources
        save #create a save method for better orginization 
    end

    def self.all
        ChiRes::Scraper.scrape_tags if @@all.empty?
        @@all
    end

    def get_resources
        ChiRes::Scraper.scrape_resources(self) if @resources.empty?
    end

    def save
        @@all << self
    end
   
end
