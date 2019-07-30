class HomePage < BasePage
    attr_accessor :main_logo


    def initialize
        @main_logo = Element.new(:css, '#header_logo > a > img')
        @signin_button = Element.new(:css, '#header > div.nav > div nav > div.header_user_info > a')
    end


#####
    def visible?
    @main_logo.isVisible
    end

    def load
    visit('')
    end

    def openSignIn
    @signin_button.click
    end
        
end