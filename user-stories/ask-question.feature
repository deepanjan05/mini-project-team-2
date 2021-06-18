# Author: Deepanjan, Kanav, Praduman, Rizwan
# Name: StackOverflow
@AskQuestion @Sanity
Feature: Ask Question
  User wants to ask question

  Background: 
    Given user is logged in
    And in question page

  Scenario Outline: User asks question
    When user enters valid question title as "<title>"
    And valid question body as "<body>"
    And tag as "<tag>"
    Then post the question

    Examples: 
      | title          | body      | tag |
      | What is Earth? | blah blah |     |
      | Waht is Sun?   | bleh bleh | Sun |

  Scenario Outline: Required fields missing
    When check user did not enter title or body
      | title          | body      |
      | What is Earth? |           |
      |                | bleh bleh |
      |                |           |
    Then show required fields missing error
