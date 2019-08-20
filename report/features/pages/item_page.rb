class ItemPage < BasePage

    def initialize
    @find_firstname = Element.new(:xpath, '//*[@id="center_column"]/h1/span[2][contains(text(), "1 result")]')
    @open_item = Element.new(:css, '#center_column > ul > li > div > div.left-block > div')
    @close_window = Element.new(:css, '#search > div.fancybox-overlay.fancybox-overlay-fixed > div > div > a')
    @quantity_field = Element.new(:css, '#quantity_wanted')
    @size_dropdown = Element.new(:css, '#uniform-group_1')
    @size_option = Element.new(:css, '#uniform-group_1')
   end

    def how_many_items
    @find_firstname.isVisible
    end

    def open_item
    @open_item.click
    end

    def close_window
    @close_window.click
    end

    def select_quantity
    @quantity_field.click
    @quantity_field.clear
    @quantity_field.send_keys('2')
    sleep (2)
    end

    def select_size(text)
    @size_dropdown.click
    Capybara.find(@size_option.css, text: /#{text}/i).click
    end
end
    