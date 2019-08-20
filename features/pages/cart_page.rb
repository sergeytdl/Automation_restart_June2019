class CartPage

    def initialize
    @cart_title = Element.new(:css, '#cart_title')
    @description = Element.new(:xpath, '//*[@id="product_2_7_0_204571"]//a[contains(text(), "Blouse")]')
    @amount = Element.new(:xpath, '//*[@id="summary_products_quantity"][contains(text(), "2 Products")]')
    @checkout_button2 = Element.new(:xpath, '//*[@id="center_column"]/p[2]/a[1]')
    end

    def cart_is_opened
    @cart_title.isVisible
    end

    def description_correct
    @description.click
    end

    def correct_amount
    @amount.isVisible
    end

    def checkout_button
    @checkout_button2.isVisible
    end
end