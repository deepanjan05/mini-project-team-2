# this is my Comment
# Author : Deepanjan, Kanav, Praduman, Rizwan
@search @Sanity
Feature: Searching a question - StackTooFlow

  Background: 
    Given User is logged in

  Scenario: 
    When the user wants to search a query "<query>"
    Then display relevant questions
      | query       |
      | What is apple? |

  Scenario: 
    When the user searches with an empty question
    Then pop an alert please enter something

 
