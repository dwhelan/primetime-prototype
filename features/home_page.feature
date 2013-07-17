Feature: Home page

  Background:
    Given I am on the home page

  Scenario: I should be able to do common things
    Then I should be able to "search"
    And I should be able to "navigate"

  Scenario: I should be able to navigate the site
    When I choose to navigate to "Home"
    Then I should be on the "Home" page
    When I choose to navigate to "News"
    Then I should be on the "News" page