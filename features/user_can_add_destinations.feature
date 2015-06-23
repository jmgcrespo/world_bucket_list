Feature: User can register
  As a User
  I want to add Destinations
  So that I can assign my Bucket List entries


Scenario:  User creates uniquely named destinations
  Given I am a registered and signed in user
  When I am in new destination page
  And I complete destination field
  And I click in create destination button
  Then a new Destination is created
  And I am directed to my profile
