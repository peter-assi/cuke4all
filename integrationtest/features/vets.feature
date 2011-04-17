Feature: Veterinarians

  Scenario: View veterinarian
    Given a vet exists with first_name: "Aslak", last_name: "Hellesoy", address: "10 Downing Street", birth_day: "1970-01-01", city: "London", telephone: "12121212"
    When I am on the veterinarians page
    Then I should see "Aslak"

