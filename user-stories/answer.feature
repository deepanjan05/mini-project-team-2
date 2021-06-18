# Author: Deepanjan, Kanav, Praduman, Rizwan
# Name: StackOverflow
@Answer @Sanity
Feature: Comment
  Use cases on questions page

  Background: 
    Given user is logged in
    And is on questions page
    And question not posted by user

  Scenario Outline: User wants to answer a question
    When user wants to give answer "<answer>" for question "<question>"
    And has not already answered the question
    Then post the answer
    And disable answer button
    And Enable edit answer button

    Examples: 
      | answer              | question |
      | blah blah           | q1       |
      | blah blah blah blah | q2       |

  Scenario Outline: Required fields missing
    When user post an empty answer
      | answer |
      |        |
    Then show required field can not be empty
