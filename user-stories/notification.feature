#@author: Deepanjan, Kanav, Praduman, Rizwan

@Notification @Sanity
  Feature: User Get Notifications
    Scenario Outline: User's Notifications
      Given User logged in
      When Notice any activity on posts
      Then Notifications Received

      Examples:
        | notification Header | Body |
        | Get One             | body |


    Scenario Outline: User Seen All Notification
      Given User logged in
      When Notice any activity on posts
      And Navigate to notification page
      And Click on notification
      And Navigate to activity page
      Then User seen current notification

      Examples:
        | notification Header | Body |
        | Get One             | body |

    Scenario Outline: User Haven't See Notifications
      Given User logged in
      When Notice any activity on posts
      And User haven't navigate to notification page
      Then User haven't seen notification

      Examples:
        | notification Header | Body |
        | Get One             | body |


    Scenario Outline: User Seen Some Notifications
      Given User logged in
      When Notice any activity on posts
      And User seen some notification
      And Click on some notification
      Then User haven't seen some notification

      Examples:
        | notification Header | Body |
        | Get One             | body |

    Scenario Outline: Can't See Notifications
      Given User haven't logged in
      When User not have authorization
      Then User navigate to Login Page or registration page

      Examples:
        | notification Header | Body |
        | Get One             | body |
