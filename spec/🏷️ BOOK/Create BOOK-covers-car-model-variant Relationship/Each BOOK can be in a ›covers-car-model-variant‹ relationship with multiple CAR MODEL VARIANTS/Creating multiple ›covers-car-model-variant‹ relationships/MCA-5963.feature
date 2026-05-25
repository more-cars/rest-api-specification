@REQ_MCA-5953
Feature: Create BOOK-covers-car-model-variant Relationship

  @RULE_MCA-5962
  Rule: Each BOOK can be in a ›covers-car-model-variant‹ relationship with multiple CAR MODEL VARIANTS

    @TEST_MCA-5963 @implemented
    Scenario: Creating multiple ›covers-car-model-variant‹ relationships
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "CAR MODEL VARIANT" "Ferrari SF-25"
      And there exists a "CAR MODEL VARIANT" "Ferrari SF-25 (Alternative)"
      When the user creates a "covers car model variant" relationship between "F1 in Numbers" and "Ferrari SF-25"
      And the user creates a "covers car model variant" relationship between "F1 in Numbers" and "Ferrari SF-25 (Alternative)"
      Then there should exist a "covers car model variant" relationship between "F1 in Numbers" and "Ferrari SF-25"
      And there should exist a "covers car model variant" relationship between "F1 in Numbers" and "Ferrari SF-25 (Alternative)"
