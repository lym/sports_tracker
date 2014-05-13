@wip
Feature: access bet options
  As a Visitor
  I need to access tennis bet options
  So I can decide which matches to bet on

  Scenario: Successful request
    Given am on the home view
    When I click on "Tennis"
    Then I should see "Tennis Betting Odds"
