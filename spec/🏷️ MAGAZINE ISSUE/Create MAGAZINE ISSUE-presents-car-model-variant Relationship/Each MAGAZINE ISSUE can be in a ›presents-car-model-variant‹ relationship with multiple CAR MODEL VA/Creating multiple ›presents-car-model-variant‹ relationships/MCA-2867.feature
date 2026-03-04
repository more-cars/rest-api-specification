@REQ_MCA-2857
Feature: Create MAGAZINE ISSUE-presents-car-model-variant Relationship

  @RULE_MCA-2866
  Rule: Each MAGAZINE ISSUE can be in a ›presents-car-model-variant‹ relationship with multiple CAR MODEL VARIANTS

    @TEST_MCA-2867
    Scenario: Creating multiple ›presents-car-model-variant‹ relationships
      Given there exists a "MAGAZINE ISSUE" "Best Supercars 2025"
      And there exists a "CAR MODEL VARIANT" "McLaren 750S"
      And there exists a "CAR MODEL VARIANT" "McLaren 750S (Alternative)"
      When the user creates a "presents car model variant" relationship between "Best Supercars 2025" and "McLaren 750S"
      And the user creates a "presents car model variant" relationship between "Best Supercars 2025" and "McLaren 750S (Alternative)"
      Then there should exist a "presents car model variant" relationship between "Best Supercars 2025" and "McLaren 750S"
      And there should exist a "presents car model variant" relationship between "Best Supercars 2025" and "McLaren 750S (Alternative)"
