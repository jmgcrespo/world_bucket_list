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
  expect(User.first.email).to eq 'manolito@gafotas.com'
end

Then(/^I am directed to my profile$/) do
  expect(page.current_path).to match /users/
end


Given(/^I am a registered and sigend in user$/) do
  email = 'manolito@gafotas.com'
  password = '12345678'
  @test_user = User.create!(:email => email, :password => password)

  visit '/users/sign_in'
  fill_in 'Email', with: email
  fill_in 'Password', with: password
  click_button 'Log in'
end


When(/^I am at new destination page$/) do
  visit new_user_destinations_path(@test_user)
end

When(/^I fill and submit destination´s required information$/) do
  fill_in 'Name', with: 'Kuala Lumpur'
  click_button 'Create Destination'
end

Then(/^a new Destination is created$/) do
  expect(@test_user.destinations.count).to be 1
end

Then(/^I can create a new destination$/) do
  expect(page.body).to  have_field 'Name'
end
