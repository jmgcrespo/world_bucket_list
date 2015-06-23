
Given(/^I am a signed in$/) do
  email = 'manolito@gafotas.com'
  password = '12345678'
  @test_user=User.new(:email => email, :password => password, :password_confirmation => password).save!

  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Sign in"
end

When(/^I am in new destination page$/) do
  visit 'destinations/new'
end

When(/^I complete destination field$/) do
  fill_in 'Destination', with: 'Kuala Lumpur'
end

When (/^I click in create destination button$/) do
  click_button 'Create destination'
end
Then(/^a new Destination is created$/) do
  expect(@test_user.destinations.count).to eq 1
end
