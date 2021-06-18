# this is my Comment
# Author : Deepanjan, Kanav, Praduman, Rizwan
@Dashboard @Sanity
Feature: Viewing user dashboard - StackTooFlow

  Background: 
    Given User is logged in

  Scenario: 
    When viewing his dashboard
    Then his/her profile including name, email, gender, social links
    And display a list of few questions, comments and rating

  Scenario: 
    When viewing his dashboard
    And the user clicks on myQuestions button
    Then display his/her all the questions

  Scenario: 
    When viewing his dashboard
    And the user clicks on myComments button
    Then display his/her all comments
