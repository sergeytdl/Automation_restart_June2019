class HomePage < BasePage
    attr_accessor :main_logo


    def initialize
        @main_logo = Element.new(:css, '.logo')
        @signin_button = Element.new(:css, '.login')
        @best_seller_button = Element.new(:xpath, '//*[@id="block_various_links_footer"]/ul/li[3]/a')
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
        
    def best_seller
    @best_seller_button.click
    end
    
end