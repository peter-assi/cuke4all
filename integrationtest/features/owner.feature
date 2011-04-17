Feature: Manage owners                                                      

  Scenario: View owner
    Given an owner exists with first_name: "Dan", last_name: "North", address: "Windsor Castle", city: "Berkshire", birth_day: "19700101", telephone: "123456"
    When I am on the list owners page
    Then I should see "Dan"
    And I should see "North"

  Scenario: Enter owner
    Given I am on the enter owner page
    When I fill in "First Name" with "Jason"
    And I fill in "Last Name" with "Gorman"
    And I fill in "Address" with "Buckingham Palace"
    And I fill in "City" with "London"
    And I fill in "Telephone" with "123456"
    And I fill in "Email" with "jason@gorman.uk"
    And I fill in "Birth Day" with "1/1/1970"
    And I press "Save"
    Then an owner should exist with first_name: "Jason", city: "London"

