Feature: Home page

  Background:
    Given I am on the "Home" page

  Scenario: I should see the Synacor logo and it should link to the home page
    Then I should see the Synacor "logo"
    When I select the Synacor "logo"
    Then I should be on the "Home" page

  Scenario: I should be able to search
    Then I should be able to "search"

  Scenario: I should be able to navigate the site via the nav bar
    When I choose to navigate to "Home"
    Then I should be on the "Home" page
    When I choose to navigate to "News"
    Then I should be on the "News" page