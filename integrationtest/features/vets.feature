Feature: Manage owners                                                      

  Scenario: Navigate to the veterinarians page
    Given I am on the home page
    When I follow "Display all veterinarians"
    Then I should see "Veterinarians"

  Scenario: View veterinarian
    Given a vet exists with first_name: "Aslak", last_name: "Hellesoy"
    When I am on the veterinarians page
    Then I should see "Aslak"

