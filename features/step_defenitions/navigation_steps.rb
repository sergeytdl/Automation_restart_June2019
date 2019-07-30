#1
Given(/^I have opened landing page$/) do
    @pages.page_first.load
    @pages.page_first.visible?
end

#2
And(/^I am on Sign In page$/) do
    @pages.page_first.openSignIn
end
  