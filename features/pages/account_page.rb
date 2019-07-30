class AccountPage

    def initialize
    @create_account_button = Element.new(:css, '#center_column > div > div:nth-child(1)')
    @search_menu = Element.new(:css, '#search_query_top')
    @search_button = Element.new(:css, '#searchbox > button')
    end

    def logged_in
    @create_account_button.isVisible
    end

    def select_search_menu
    @search_menu.click
    end

    def enter_item(item)
    @search_menu.send_keys(item)
    end

    def press_search
    @search_button.click
    end

end