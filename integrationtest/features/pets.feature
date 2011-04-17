Feature: Pets

  Scenario: Find a pet
    Given a pet exists with name: "Fido", sort: 0, weight: 23
    When I go to the list pets page
    Then I should see "Fido"

  Scenario: Enter a pet
    Given I am on the enter pet page
    And I fill in "Name" with "Rufus"
    And I fill in "Sort" with "Cat"
    And I fill in "Weight" with "8"
    And I press "Save"
    Then a pet should exist with name: "Rufus", weight: 8

