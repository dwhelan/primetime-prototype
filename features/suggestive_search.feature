Feature: Suggestive search

  Background:
    Given I am on the home page

  Scenario: should provide 5 search suggestions
    When I enter "f" in the search box
    Then there should be no search suggestions
    When I enter "fo" in the search box
    Then there should be 5 search suggestions
    And each suggestion should contain "fo"