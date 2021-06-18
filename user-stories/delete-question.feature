# Author: Deepanjan, Kanav, Praduman, Rizwan
# Name: StackOverflow
@Update @Sanity
Feature: Comment
  Use cases on questions page

  Background: 
    Given user is logged in
    And is on questions page
    And question is posted by user

  Scenario Outline: User wants to delete the question
    When user wants to delete question "<question>"
    Then delete the question
    And delete its answers
    And delete its comments
    

    Examples: 
      | question |
      | q1       |
