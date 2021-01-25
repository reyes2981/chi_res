class ChiRes::Scraper
    def self.scrape_tags # calling class method from self.all
        doc = Nokogiri::HTML(open("https://covid.citybureau.org/en/"))
        tags = doc.css("div.checkbox-group-values label.checkbox").map { |i| i }
        tags.pop(13)
        tags.each.with_index(1) do |t|  
            name = t.text
            ref = t.attr("value")
            ChiRes::Tag.new(name)
            #binding.pry
        end
    end
    

    def self.scrape_resources(tag) #need to fix this method
        ChiRes::Resource.new("Chicago Help 411", tag)
        ChiRes::Resource.new("Chase Bank", tag)
        ChiRes::Resource.new("Money Assistance", tag)
        ChiRes::Resource.new("Dinero Finance", tag)
        ChiRes::Resource.new("Dinero Finance", tag)
    end

end
# NOTES:   
# created a method that converted my returned scrapped abject into an array.
# Need to create an array with only 8 tags 01/09/21 class ChiRes::Scraper

