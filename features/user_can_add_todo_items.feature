Feature: A User can add ToDo items to a destination
  As a User
  I want to add ToDo entries
  So I can organise my  trip
  @javascript
  Scenario:
    Given I am a registered and signed in user
    And I have created already some destinatinos
    When I am in my Bucket List
    And I click on a destination
    And I click on add ToDo
    And I fill in name and location
    Then a new ToDo item is created
