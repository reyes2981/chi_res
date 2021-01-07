class Resource::Scraper
    def scrape_tags # currently not calling this method from anywhere in program
        doc = Nokogiri::HTML(open("https://covid.citybureau.org/en/?what=Food%2CHousing%2CMoney"))
        binding.pry
    end

end