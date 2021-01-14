class ChiRes::Scraper
    def self.scrape_tags # calling class method from self.all
        doc = Nokogiri::HTML(open("https://covid.citybureau.org/en/?what=Food%2CHousing%2CMoney"))
        tags = doc.css("div.checkbox-group-values label.checkbox").map { |i| i }
        tags.pop(13)
        tags.each.with_index(1) do |t|  
            name = t.text
            ChiRes::Tag.new(name)
        end
    end

    def self.scrape_resources(tag)
        ChiRes::Resource.new("Chicago Help 411", tag)
    end
end
# NOTES:   
# created a method that converted my returned scrapped abject into an array.
# Need to create an array with only 8 tags 01/09/21 