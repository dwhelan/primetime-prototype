Feature: Suggestive search

  Background:
    Given I am on the home page

  Scenario: should provide 5 search suggestions
    When I start searching for "f"
    Then there should be no search suggestions
    When I start searching for "fo"
    Then there should be 5 search suggestions
    And each suggestion should contain "fo"