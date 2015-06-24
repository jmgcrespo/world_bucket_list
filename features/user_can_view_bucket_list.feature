Feature: A User can view their Bucket List
  As a User
  I want to view my Bucket List
  So that I can organise my life

  Scenario: A User sees their beucket list
    Given I am a registered and signed in user
    When I am at my profile page
    Then I can see my Bucket List
