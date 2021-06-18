#@author: Deepanjan, Kanav, Praduman, Rizwan

@BestAnswer @Sanity
  Feature: Mark Best Answer
    Scenario Outline: Best Answer
      Given User logged in
      When User have authorization
      And Navigate to Question page
      Then User marked best reply

      Examples:
        | Best Answer |
        |This is Best Answer |

    Scenario Outline: Can't Mark Best Answer
      Given User haven't logged in
      When User not have authorization
      Then User navigate to Login Page or registration page

      Examples:
        | Best Answer |
        |This is Best Answer |
