# Author: Deepanjan, Kanav, Praduman, Rizwan
# Name: StackOverflow
@Suggest @Sanity
Feature: Suggest
  Use cases on questions page

  Background: 
    Given user is logged in
    And is on questions page

  Scenario Outline: Show similar suggestions
    When question is "<question>"
    Then show similar questions