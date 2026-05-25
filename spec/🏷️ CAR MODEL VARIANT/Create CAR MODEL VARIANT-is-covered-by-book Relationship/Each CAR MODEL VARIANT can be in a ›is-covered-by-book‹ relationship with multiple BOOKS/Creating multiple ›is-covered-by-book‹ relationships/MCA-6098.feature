@REQ_MCA-6088
Feature: Create CAR MODEL VARIANT-is-covered-by-book Relationship

  @RULE_MCA-6097
  Rule: Each CAR MODEL VARIANT can be in a ›is-covered-by-book‹ relationship with multiple BOOKS

    @TEST_MCA-6098 @implemented
    Scenario: Creating multiple ›is-covered-by-book‹ relationships
      Given there exists a "CAR MODEL VARIANT" "Ferrari SF-25"
      And there exists a "BOOK" "F1 in Numbers"
      And there exists a "BOOK" "F1 in Numbers (Alternative)"
      When the user creates a "is covered by book" relationship between "Ferrari SF-25" and "F1 in Numbers"
      And the user creates a "is covered by book" relationship between "Ferrari SF-25" and "F1 in Numbers (Alternative)"
      Then there should exist a "is covered by book" relationship between "Ferrari SF-25" and "F1 in Numbers"
      And there should exist a "is covered by book" relationship between "Ferrari SF-25" and "F1 in Numbers (Alternative)"
