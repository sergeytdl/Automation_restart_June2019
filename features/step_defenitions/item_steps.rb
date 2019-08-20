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

And (/^I change quantity to 2$/) do
    @pages.page_item.select_quantity
end

And (/^I set size to S$/) do
    @pages.page_item.select_size('S')
end

