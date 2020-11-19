class ChiRes::CLI
    def call 
        list_tags
        menu
        goodbye
    end

    def list_tags
        puts "Chicago COVID-19 Resources:"
        puts <<-DOC
        1. Money
        2. Food
        3. Housing
        4. Health
        5. Mental Health
        6. Utilities
        7. Legal Help
        DOC
        @resources = ChiRes::Resource.today
    end

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the tag you would like resources on or type list to see the the tags again OR type exit: "
            input = gets.strip.downcase
            case input
            when "1"
                puts "More info on deal 1..."
            when "2"
                puts "More info on deal 2..."
            when "list"
                list_tags
            else 
                puts "Not sure what you want, type list or exit"
            end
        end
    end

    def goodbye
        puts "See you next time!"
    end
end

