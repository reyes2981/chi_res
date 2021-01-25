class ChiRes::CLI # name space
    def call # first object to be called in the "chain of commands"
        puts "\nWelcome to ChiRes!\n".colorize(:yellow)
        puts "--" * 40
        puts "\nAll information used on this program was derived from: https://covid.citybureau.org/en/\n"
        puts "--" * 40
        puts "\nTo see see a list of resources please enter 'list'\n"
        puts "\nTo exit please enter 'exit'\n"
        puts "--" * 40
        menu
        get_user_tag
    end

    def menu
        input = gets.strip.downcase
        if input == 'list'
            get_tags
            list_tags
            get_user_tag
            populate_resource_detail
            get_user_resource
            menu
        elsif input == 'exit'
            puts "See you next time!"
            exit
        else
            invalid_entry
        end
    end

    def invalid_entry
        puts "Oops invalid entry, please try again." #'puts' is to show this to user/'return' is to return internally 
        menu
    end

    def get_tags
        @tags = ChiRes::Tag.all # instance variable now available for all instance methods in this class
    end

    def list_tags # list out tags
        puts "\nChoose one of the tags below to get more COVID-19 resources by selecting its associated number\n"
        puts "--" * 40
        @tags.each.with_index(1) {|tag, index| puts "#{index}. #{tag.name}"} #we are getting the "name" from the tag class via the instance variable.
    end

    def get_user_tag #look into refactoring 
        chosen_tag = gets.strip.to_i
        show_list_resources(chosen_tag) if valid_input(chosen_tag.to_i, @tags)  
    end

    def valid_input(input, data) # instance method
        input.to_i <= data.length && input.to_i > 0 #what does this method mean?
    end

    def show_list_resources(chosen_tag)
        tag = @tags[chosen_tag - 1] # the first number in an array is always 0
        tag.get_resources
        puts "#{tag.name}: Choose one of the resources below to get more details by selecting it's associated number."
        puts "--" * 40
        tag.resources.each.with_index(1) { |resource, index| puts "#{index}. #{resource.name}"}
        populate_resource_detail
    end

    def populate_resource_detail
        @resource_detail = ChiRes::ResourceDetail.description
    end

    def get_user_resource #look into refactoring 
        chosen_resource = gets.strip.to_i
        show_resource_detail(chosen_resource) if valid_input(chosen_resource.to_i, @resource_detail)  
    end

    def valid_input(input, data) # instance method
       input.to_i <= data.length && input.to_i > 0 #what does this method mean?
    end

    def show_resource_detail(chosen_resource)
        resource_detail = @resource_detail[chosen_resource - 1] # the first number in an array is always 0
        resource_detail.get_detail
        puts "#{resource_detail.detail}"
        menu
    end
end
#NOTES 
#CLI is where my program interacts with the user. Try to keep this class free of scraping data