class ChiRes::Resource
    @@all = []
    attr_accessor :tag 

    def initialize(tag)
        @tag = tag
        save #create a save  method for better orginization 
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end
   

   

    # def self.scrape_woot
       # doc = Nokogiri::HTML(open(""))

# doc = Nokogiri::HTML(open("https://covid.citybureau.org/en/?what=Food%2CHousing%2CMoney"))

        # results = doc.css("div.section filter-results-section").text

        # tag = doc.css("div.tag-row")[0].text
        # tag = doc.css("h3")[0].text
        # description = doc.css("p")[0].text
        # url = doc.css("a")[0].attributes["href"].text
        
     #   resource = self.new
        # resource.tag = doc.css("div.tag-row")[0].text
        # resource.tag = doc.css("h3")[0].text
        # resource.description = doc.css("p")[0].text
        # resource.url = doc.css("a")[0].attributes["href"].text
    #    resource
    # end
end
