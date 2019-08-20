#3
When(/^I enter new email$/) do
@pages.page_sign_up.enter_email
end

And(/^I press Create account button$/) do
@pages.page_sign_up.clickAccountButton
end

And(/^I enter a mandatory user details$/) do
@pages.page_sign_up.drop_down('alaska')
@pages.page_sign_up.mandatoryFieldsInput
end

And(/^I press Register button$/) do
@pages.page_sign_up.clickRegisterButton
end