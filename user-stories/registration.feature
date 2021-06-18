# Author: Deepanjan, Kanav, Praduman, Rizwan
# Name: StackOverflow
@Registration @Sanity
Feature: Registration
  Use cases in registration page

  Background: 
    Given user tries to register

  Scenario Outline: Successful Registration
    When user enters valid name as "<name>"
    And valid email as "<email>"
    And password as "<password>"
    And confirm password as "<confirm password>"
    Then show message user registered successfully

    Examples: 
      | name      | email           | password   | confirm password |
      | Deepanjan | hello@gmail.com | hello      | hello            |
      | Kanav     | kanav@gmail.com | testing123 | testing123       |

  Scenario Outline: Invalid or wrong email
    When user entered invalid or wrong email as "<email>"
    Then show invalid email error

    Examples: 
      | email            |
      | hello@gmail.com  |
      | naveen@gmail.com |

  Scenario Outline: Confirm password not matching
    When check password and confirm password not same for
      | password | confirm password |
      | a1235    | a1234            |
      | h123     | hello123         |
    Then show confirm password does not match error
