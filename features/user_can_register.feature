Feature: User can register
  As a User
  I want to register
  So I can manage my Bucket List

Scenario:  User registers with email and password
  Given No User exists
  When I am in the registration page
  And I complete email and password fields
  And I summit my information
  Then my User account is created
  And I am directed to my profile

