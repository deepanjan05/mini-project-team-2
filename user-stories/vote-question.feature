# Author: Deepanjan, Kanav, Praduman, Rizwan
# Name: StackOverflow
@VoteQuestion @Sanity
Feature: Vote Question
  User wants to up/down vote a question not asked by the user

  Background: 
    Given user is logged in
    And has opened a question
    And the question is not posted by the user

  Scenario Outline: User up-voted the question
    When user clicks on up-vote
    And user has not already voted the question
    Then increase vote count of the question by 1
    And disable up-vote for the user for that question

  Scenario Outline: User down-voted the question
    When user clicks on down-vote
    And user has not already voted the question
    Then decrease vote count of the question by 1
    And disable down-vote for the user for that question

  Scenario Outline: User up-voted the question which was already down-voted by the user
    When user clicks on up-vote
    And user has already down-voted the question before
    Then increase vote count of the question by 2
    And disable up-vote for the user for that question
    And enable down-vote for the user for that question

  Scenario Outline: User down-voted the question which was already up-voted by the user
    When user clicks on down-vote
    And user has already up-voted the question before
    Then decrease vote count of the question by 2
    And disable down-vote for the user for that question
    And enable up-vote for the user for that question
