#@author: Deepanjan, Kanav, Praduman, Rizwan

@closeQuestion @Sanity
  Feature: User Closed Question
    Scenario Outline: Question Can Close
      Given User logged in
      When User have authorization
      And navigate to question page
      Then User Closed the question

      Examples:
        | Close Button  |
        | press buttons |

    Scenario Outline: Question Can't Close
      Given User logged in
      When User not have authorization
      Then User can't close

      Examples:
        | Close Button  |
        | press buttons |

    Scenario Outline: Question Can't Close
      Given User haven't logged in
      When User not have authorization
      Then User navigate to Login Page or registration page

      Examples:
        | Close Button  |
        | press buttons |


