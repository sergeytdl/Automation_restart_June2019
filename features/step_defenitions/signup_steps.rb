#3
When(/^I enter new email$/) do
  random = (Random.rand(1000..9999)).to_s
  Element.new(:css, '#email_create').send_keys("something#{random}@gmail.com")
end

#4
And(/^I press Create account button$/) do
  @pages.page_sign_up.clickAccountButton
  sleep (1)
end

#5
And(/^I enter a mandatory user details$/) do
  # @pages.page_sign_up.mandatoryName(name)  name: {string} lastname: {string}"
  # @pages.page_sign_up.mandatoryLastname(lastname)  do |name, lastname|
  @pages.page_sign_up.drop_down('alaska')
  @pages.page_sign_up.mandatoryFieldsInput
end

And(/^I press Register button$/) do
  @pages.page_sign_up.clickRegisterButton
  sleep (5)
end