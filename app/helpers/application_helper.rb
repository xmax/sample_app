module ApplicationHelper

    def title
        base_title = 'Ruby on Rails Tutorial Sample App'
        if @title.nil?
            base_title
        else
            "#{base_title} | #{@title}"
        end
    end #title
    
    def logo
      image_tag( "logo.png", :alt => "Sample App", :class => "round" )
    end #logo
end
