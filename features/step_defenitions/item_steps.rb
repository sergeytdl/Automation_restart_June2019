And (/^Only 1 result is found$/) do
    @pages.page_item.how_many_items
end

And (/^I select the item$/) do
    @pages.page_item.open_item
end

And (/^I change quantity to 2$/) do
    @pages.page_item.select_quantity
end

And ("I set size to {string}") do |size|
    @pages.page_item.select_size(size)
end

And (/^I set color to White$/) do
    @pages.page_item.white_color
end

And (/^I select Add to cart button$/) do
    @pages.page_item.add_item_to_cart
end

And (/^Item is successfully added to cart$/) do
    @pages.page_item.added_to_cart
end

And (/^I click on Proceed to checkout button$/) do
    @pages.page_item.go_to_checkout
end

Then (/^Shopping cart summary page is opened$/) do
    @pages.page_cart.cart_is_opened
end

And (/^Correct description is specified$/) do
    @pages.page_cart.description_correct
end

And (/^Amount is correctly calculated$/) do
    @pages.page_cart.correct_amount
end

And (/^Proceed to checkout button is visible$/) do
    @pages.page_cart.checkout_button
end
#####
And (/^I select first item from list$/) do
    @pages.page_item.open_first_item
end

And(/^Item description and condition is displayed$/) do
    @pages.page_item.main_description
end

And(/^I click on Add to wishlist button$/) do
    @pages.page_item.add_to_wishlist
end


Then(/^My Wishlist item and details are displayed$/) do
    @pages.page_item.wishlist_item_visible
end