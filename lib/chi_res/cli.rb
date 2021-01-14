class ChiRes::CLI # name space
    def call # first object to be called in the "chain of commands"
        welcome
        get_tags
        list_tags
        get_user_tag
    end

    def welcome # greeting for user / refactor possibility
        puts "\nWelcome to Chicago COVID-19 Resources.
        All information used on this program was derived from:
        https://covid.citybureau.org/en/\n"
        puts "--" * 40
    end

    def get_tags
        @tags = ChiRes::Tag.all # instance variable now available for all instance methods in this class
    end

    def list_tags # list out tags
        puts "\nChoose a tag by selecting its associated number\n"
        @tags.each.with_index(1) {|tag, index| puts "#{index}. #{tag.name}"}
    end

    def get_user_tag #look into refactoring 
        chosen_tag = gets.strip.to_i
        show_list_resources(chosen_tag) if valid_input(chosen_tag, @tags)  
    end

    def valid_input(input, data) # instance method
        input.to_i <= data.length && input.to_i > 0
    end

    def show_list_resources(chosen_tag)
        tag = @tags[chosen_tag - 1] # the first number in an array is always 0
        tag.get_resources
        puts "Here are resources for #{tag.name}"
        tag.resources.each.with_index(1) {|resource, index| puts "#{index}. #{resource.name}"}
    end

    def goodbye
       puts "See you next time!"
    end
end

#NOTES 
#CLI is where my program interacts with the user. Try to keep this class free of scraping data
#