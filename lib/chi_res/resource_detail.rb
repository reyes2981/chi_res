class ChiRes::ResourceDetail

    attr_accessor :detail
    @@description = []

    def initialize(detail)
        @detail = detail
        save
    end

    def self.description
        ChiRes::ResourceDetailScraper.scrape_resource_detail if @@description.empty?
        @@description
    end

    def get_detail
        ChiRes::ResourceDetailScraper.scrape_resource_detail(self) if @detail.empty?
    end
    
    def save
        @@description << self
    end
end

