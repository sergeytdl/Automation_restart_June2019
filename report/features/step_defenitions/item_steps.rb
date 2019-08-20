And (/^Only 1 result is found$/) do
    @pages.page_item.how_many_items
end

And (/^I select the item$/) do
    @pages.page_item.open_item
    sleep (3)
end

And (/^I select Add to cart button$/) do
    @pages.page_item.close_window
end


