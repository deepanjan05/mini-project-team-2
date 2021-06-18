# Author: Deepanjan, Kanav, Praduman, Rizwan
# Name: StackOverflow
@Update @Sanity
Feature: Comment
  Use cases on questions page

  Background: 
    Given user is logged in
    And is on questions page
    And comment is posted by user

  Scenario Outline: User wants to update the comment
    When user wants to update comment "<comment>"
    Then update the comment
    
    Examples: 
      | comment |
      | c1       |
