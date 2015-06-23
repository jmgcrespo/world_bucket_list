Given(/^No User exists$/) do
  User.delete_all
end

When(/^I am in the registration page$/) do
  visit 'users/sign_up'
end

When(/^I complete email and password fields$/) do
  fill_in 'Email', with: 'manolito@gafotas.com'
  fill_in 'Password', with: '12345678'
  fill_in 'Password confirmation', with: '12345678'
end

When(/^I summit my information$/) do
  click_button 'Sign up'
end

Then(/^my User account is created$/) do
  debugger
  expect(User.first.email).to eq 'manolito@gafotas.com'
end

Then(/^I am directed to my profile$/) do
  pending # express the regexp above with the code you wish you had
end
