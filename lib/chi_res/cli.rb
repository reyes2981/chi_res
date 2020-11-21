class ChiRes::CLI
    def call 
        list_tags
        menu
        goodbye
    end

    def list_tags
        puts "Chicago COVID-19 Resources:"
        @resources = ChiRes::Resource.today
        @resources.each.with_index(1) do |resource, i|
            puts "#{i}. #{resource.tag} - #{resource.name} - #{resource.description}"
        end
    end

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the tag you would like resources on or type list to see the the tags again OR type exit: "
            input = gets.strip.downcase

            if input.to_i > 0
                puts @resources[input.to_i-1]
            elsif input == "list"
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

