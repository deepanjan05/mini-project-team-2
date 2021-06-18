# Author: Deepanjan, Kanav, Praduman, Rizwan
# Name: StackOverflow

@TrendingQuestion @Sanity

Feature: Display trending questions
  Use cases on home page

  Background: 
    Given application is running

  Scenario Outline: Display trending questions
    When user is on home page
    Then Display trending questions