class AccountPage

    def initialize
    @create_account_button = Element.new(:css, '#center_column > div > div:nth-child(1)')
    @search_menu = Element.new(:css, '#search_query_top')
    @search_button = Element.new(:css, '#searchbox > button')
    @personal_info_button = Element.new(:css, '#center_column > div > div:nth-child(1) > ul > li:nth-child(4)')
    @personal_info_header = Element.new(:css, '#columns > div.breadcrumb.clearfix > span.navigation_page')
    @find_firstname = Element.new(:xpath, '//*[@id="header"]/div[2]/div/div/nav/div[1]/a/span[contains(text(), "vards uzvards")]')
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

    def open_personal_info
    @personal_info_button.click
    end

    def header_personal_info
    @personal_info_header.isVisible
    end

    def checkInfo
    @find_firstname.isVisible
    end


end