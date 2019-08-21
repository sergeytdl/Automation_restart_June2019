class ItemPage < BasePage

    def initialize
    @find_firstname = Element.new(:xpath, '//*[@id="center_column"]/h1/span[2][contains(text(), "1 result")]')
    @open_item = Element.new(:css, 'div.left-block')

    @quantity_field = Element.new(:css, '#quantity_wanted')
    @size_dropdown = Element.new(:css, '#uniform-group_1')
    @size_option = Element.new(:css, '#uniform-group_1')
    @white_color_option = Element.new(:css, '#color_8')
    @add_to_cart_button = Element.new(:css, '#add_to_cart')
    @item_added_text = Element.new(:xpath, '//*[@id="layer_cart_product_title"][contains(text(), "Blouse")]')
    @checkout_button = Element.new(:xpath, '//*[@id="layer_cart"]//a')
    @first_item = Element.new(:xpath, '//*[@id="center_column"]//li[1]//div//img')
    # '//*[@id="center_column"]//li[1]//div/a[1]/img'
    @main_description = Element.new(:css, '#short_description_content')
    @add_wishlist_button = Element.new(:css, '#wishlist_button')
    @add_wishlist_close_popup = Element.new(:xpath, '//*[@id="product"]/div[2]/div/div/a')
    @wishlist_item = Element.new(:css, '#block-history')
    
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
    end

    def select_size(size)
    @size_dropdown.click
    Capybara.find(@size_option.css, text: /#{size}/i).click
    end

    def white_color
    @white_color_option.click
    end

    def add_item_to_cart
    @add_to_cart_button.click
    end

    def added_to_cart
    @item_added_text.visible?
    end

    def go_to_checkout
    @checkout_button.click
    end

    def open_first_item
    @first_item.click
    end
    
    def main_description
    @main_description.isVisible
    end

    def add_to_wishlist
    @add_wishlist_button.click
    @add_wishlist_close_popup.click
    end

    def wishlist_item_visible
    @wishlist_item.isVisible

    end


end
    