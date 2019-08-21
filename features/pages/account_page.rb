class AccountPage

    def initialize
    @create_account_button = Element.new(:css, '#center_column > h1')
    # '#center_column > div > div:nth-child(1)
    @search_menu = Element.new(:css, '#search_query_top')
    @search_button = Element.new(:css, '#searchbox > button')
    @personal_info_button = Element.new(:css, '.account')
    #header > div.nav > div > div > nav > div:nth-child(1)
    @personal_info_header = Element.new(:xpath, '//*[@id="columns"]/div[1]')
    # #columns > div.breadcrumb.clearfix
    @find_firstname = Element.new(:xpath, '//*[@id="header"]//nav//a/span[contains(text(), "vards uzvards")]')
    # //*[@id="header"]//nav//a/span[@text="vards uzvards"]
    # div.dwdwdwd div.vards
    @my_wishlist_button = Element.new(:css, '.lnk_wishlist')
    # '//*[@id="center_column"]/div/div[2]/ul/li/a
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

    def my_wishlist_part
    @my_wishlist_button.click
    end
end