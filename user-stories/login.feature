# Author: Deepanjan, Kanav, Praduman, Rizwan
# Name: StackOverflow
@Login @Sanity
Feature: Login
  Use cases in login page

  Background: 
    Given user tries to login

  Scenario Outline: 
    When user enters valid email as "<email>"
    And password as "<password>"
    Then take user to home page

    Examples: 
      | email            | password   |
      | hello@gmail.com  | hello      |
      | naveen@gmail.com | testing123 |

  Scenario Outline: 
    When user entered invalid email as "<email>"
    Then show invalid credential error

    Examples: 
      | email            |
      | hello@gmail.com  |
      | naveen@gmail.com |

  Scenario Outline: 
    When user entered wrong password as "<password>"
    Then show invalid credential error

    Examples: 
      | password |
      |     1234 |
      | hello123 |
