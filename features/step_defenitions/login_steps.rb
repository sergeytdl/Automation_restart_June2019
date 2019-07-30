And("I login with login {string} and password {string}") do |login, password|
    @pages.page_sign_up.enter_login(login)
    @pages.page_sign_up.enter_password(password)
end

And (/^I press login button$/) do
    @pages.page_sign_up.press_login 
end

And (/^I am logged in$/) do
    @pages.page_account.logged_in
end

When (/^I select Search menu$/) do
    @pages.page_account.select_search_menu
    sleep (1)
end


And ("I enter {string}") do |item|
    @pages.page_account.enter_item(item)
    sleep (2)
end

And (/^I click on Search button$/) do
    @pages.page_account.press_search
    sleep (2)
end