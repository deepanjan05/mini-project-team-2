#@author: Deepanjan, Kanav, Praduman, Rizwan

@Spam @Sanity
  Feature: Mark Spam
    Scenario Outline: Spam Question
      Given User logged in
      When User have authorization
      And Navigate to Question page
      Then User marked question spam

      Examples:
        | Spam Button | Spam Message |
        | Click Here  | Hello this is a spam Question |

    Scenario Outline: Spam Reply
      Given User logged in
      When User have authorization
      And Navigate to Question page
      Then User marked Reply spam

      Examples:
      Examples:
        | Spam Button | Spam Message |
        | Click Here  | Hello this is a spam Reply |

    Scenario Outline: Spam User
      Given User logged in
      When User get certain amount of bounty
      And Navigate to User page
      And User have authorization
      Then Marked user spam

      Examples:
        | Spam Button | Spam Message |
        | Click Here  | Hello this is a spam Reply |


    Scenario Outline: Question Can't Mark Spam
      Given User haven't logged in
      When User not have authorization
      Then User navigate to Login Page or registration page

      Examples:
        | Spam Button | Spam Message |
        | Click Here  | Hello this is a spam Reply |

