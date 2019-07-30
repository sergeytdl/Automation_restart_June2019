class ItemPage < BasePage

    def initialize
    @find_firstname = Element.new(:xpath, '//*[@id="center_column"]/h1/span[2][contains(text(), "1 result")]')
    @open_item = Element.new(:css, '#center_column > ul > li > div > div.left-block > div')
    @close_window = Element.new(:css, '#search > div.fancybox-overlay.fancybox-overlay-fixed > div > div > a')
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
end
    