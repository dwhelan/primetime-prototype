Feature: Home page

  Background:
    Given I am on the home page

  Scenario: should provide common elements
    Then the current page should have a Synacor logo
    Then the current page should have a search box
