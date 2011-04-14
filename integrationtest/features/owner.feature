Feature: Manage owners                                                      

  Scenario: Navigate to the owners page
    Given I am on the home page
    When I follow "Find owner"
    Then I should see "Find Owners"

  Scenario: Find owner
    Given an owner exists with first_name: "Dan", last_name: "North"
    When I am on the owner search page
    And I fill in "lastName" with "North"
    And I press "Find Owners"
    Then I should see "Dan North"

  Scenario: Enter owner
    Given I am on the enter owner page
    When I fill in "firstName" with "Jason"
    And I fill in "lastName" with "Gorman"
    And I fill in "address" with "10 Downing Street"
    And I fill in "city" with "London"
    And I fill in "telephone" with "123456"
    And I press "Add Owner"
    Then an owner should exist with first_name: "Jason", city: "London"

