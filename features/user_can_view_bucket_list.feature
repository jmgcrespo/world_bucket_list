Feature: A User can view their Bucket List
  As a User
  I want to view my Bucket List
  So that I can organise my life

  Scenario: A User sees their beucket list
    Given I am a registered and sigend in user
    When I am at new destination page
    And I fill and submit destination´s required information
    Then a new Destination is created
    And I can create a new destination
