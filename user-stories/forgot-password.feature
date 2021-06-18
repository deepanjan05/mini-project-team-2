#Author: Deepanjan, Kanav, Praduman, Rizwan
# Name: StackOverflow
@Sanity @Forgot
Feature: Forgot password test

  Background: 
    Given user is on login page

  Scenario: 
    When check the password forgot for
      | email               | password     |
      | deepanjan@gmail.com | hello        |
      | kanav@gmail.com     | testing      |
      | praduman@gmail.com  | testingagain |
      | rizwan@gmail.com    | testing1234  |
    Then show relevent message
