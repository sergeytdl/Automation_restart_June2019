#3
When(/^I enter new email$/) do
random = (Random.rand(1000..9999)).to_s
Element.new(:css, '#email_create').send_keys("something#{random}@gmail.com")
end

And(/^I press Create account button$/) do
@pages.page_sign_up.clickAccountButton
sleep (1)
end

And(/^I enter a mandatory user details$/) do
@pages.page_sign_up.drop_down('alaska')
@pages.page_sign_up.mandatoryFieldsInput
end

And(/^I press Register button$/) do
@pages.page_sign_up.clickRegisterButton
end