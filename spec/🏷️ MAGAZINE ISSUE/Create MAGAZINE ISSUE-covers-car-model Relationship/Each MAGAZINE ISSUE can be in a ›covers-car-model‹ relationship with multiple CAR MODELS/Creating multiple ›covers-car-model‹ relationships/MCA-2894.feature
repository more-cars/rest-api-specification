@REQ_MCA-2884
Feature: Create MAGAZINE ISSUE-covers-car-model Relationship

  @RULE_MCA-2893
  Rule: Each MAGAZINE ISSUE can be in a ›covers-car-model‹ relationship with multiple CAR MODELS

    @TEST_MCA-2894
    Scenario: Creating multiple ›covers-car-model‹ relationships
      Given there exists a "MAGAZINE ISSUE" "50 Jahre GTI"
      And there exists a "CAR MODEL" "Golf"
      And there exists a "CAR MODEL" "Golf (Alternative)"
      When the user creates a "covers car model" relationship between "50 Jahre GTI" and "Golf"
      And the user creates a "covers car model" relationship between "50 Jahre GTI" and "Golf (Alternative)"
      Then there should exist a "covers car model" relationship between "50 Jahre GTI" and "Golf"
      And there should exist a "covers car model" relationship between "50 Jahre GTI" and "Golf (Alternative)"
