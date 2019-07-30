
Given(/^I have opened landing page$/) do
@pages.page_first.load
@pages.page_first.visible?
end


And(/^I am on Sign In page$/) do
@pages.page_first.openSignIn
end

And(/^I click on My Personal Information button$/) do
@pages.page_account.open_personal_info
end

Then(/^Your Personal Information page is opened$/) do
@pages.page_account.header_personal_info
end

And(/^Correct personal information is displayed$/) do
@pages.page_account.checkInfo
end