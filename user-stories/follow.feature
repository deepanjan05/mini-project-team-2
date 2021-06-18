#@author: Deepanjan, Kanav, Praduman, Rizwan

@Follow @Sanity
  Feature: Follow Users
    Scenario Outline: Follow Threw Button
      Given User logged in
      When User clicked button
      Then User start following

      Examples:
        | Follow Button |
        | Click Me      |

    Scenario Outline: Follow Threw Button
      Given User haven't logged in
      When User clicked button
      Then User navigate to Login Page or registration page

      Examples:
        | Follow Button |
        | Click Me      |






