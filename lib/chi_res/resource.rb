class ChiRes::Resource

    attr_accessor :tag, :name, :desciption, :url
    def self.today
        # I should return a bunch of instances of resource
        puts <<-DOC
        1. Money
        2. Food
        3. Housing
        4. Health
        5. Mental Health
        6. Utilities
        7. Legal Help
        DOC
        resource_1 = self.new
        resource_1.tag = "Money"
        resource_1.name = "Get Hired Illinois"
        resource_1.desciption ="Jobs website for workers and employers in Illinois."
        resource_1.url = "https://www2.illinois.gov/gethired/pages/default.aspx"

        resource_2 = self.new
        resource_2.tag = "Health"
        resource_2.name = "Telehealth Remote Care for Mild COVID-19 Cases"
        resource_2.desciption ="If you believe you may have a mild case of COVID-19, this remote patient monitoring program is available to anyone with or without insurance in Illinois. Patients receive daily virtual visits by health care workers and receive wellness kits that include things like thermometers and pulse oximeters and blood pressure cuffs."
        resource_2.url = "https://coronavirus.illinois.gov/s/telehealth"
    end

end
