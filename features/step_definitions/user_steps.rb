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
  expect(page.current_path).to match /^\/$/
end


Given(/^I am a registered and signed in user$/) do
  email = 'manolito@gafotas.com'
  password = '12345678'
  @test_user = User.create!(:email => email, :password => password)

  visit '/users/sign_in'
  fill_in 'Email', with: email
  fill_in 'Password', with: password
  click_button 'Log in'
end


When(/^I am in my profile$/) do
  visit user_path(@test_user)
end

When(/^I add a new destination$/) do
  click_link('Add a destination')
end

When(/^I fill and submit destination´s required information$/) do
  fill_in 'Name', with: 'Kuala Lumpur'
  click_button 'Create Destination'
end

Then(/^a new Destination is created$/) do
  expect(find('.dest-head')).to have_content('Kuala Lumpur')
end

Then(/^I can create a new destination$/) do
  expect(page.body).to  have_field 'Name'
end

Given(/^I have created already some destinatinos$/) do
  @test_user.destinations.create!(name: 'Kuala Lumpur')
  @albacete = @test_user.destinations.create!(name: 'Albacete')
end

When(/^I am in my Bucket List$/) do
  visit user_path(@test_user)
end

When(/^I click on a destination$/) do
  find("\##{dom_id(@albacete)}").find(".t_show_dest").click

end

When(/^I click on add ToDo$/) do
  click_link 'Add a ToDo'
end

When(/^I fill in name and location$/) do
  fill_in 'Name', with: 'Have a beer'
  fill_in 'Location', with: 'Plaza Mayor Albacete'
  click_button 'Create Todo'
end

Then(/^a new ToDo item is created$/) do
  expect(page).to have_content('Have a beer')
end

When(/^I am at my profile page$/) do
  visit user_path(@test_user)
end

Then(/^I can see my Bucket List$/) do
  expect(page.body).to have_content('Your Bucket List')
end
