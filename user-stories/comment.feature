# Author: Deepanjan, Kanav, Praduman, Rizwan
# Name: StackOverflow

@DeleteComment @Sanity
Feature: Comment
  Use cases on questions page

  Background: 
    Given user is logged in
    And is on questions page
    And comment is posted by user

  Scenario Outline: User wants to delete the comment
    When user wants to delete comment "<comment>"
    Then delete the comment

    Examples: 
      | comment |
      | c1       |
