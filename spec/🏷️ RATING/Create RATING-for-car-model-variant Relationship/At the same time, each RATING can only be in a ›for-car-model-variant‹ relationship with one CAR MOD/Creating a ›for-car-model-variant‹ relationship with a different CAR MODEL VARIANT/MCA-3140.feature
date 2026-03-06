@REQ_MCA-3130
Feature: Create RATING-for-car-model-variant Relationship

  @RULE_MCA-3139
  Rule: At the same time, each RATING can only be in a ›for-car-model-variant‹ relationship with one CAR MODEL VARIANT

    @TEST_MCA-3140 @implemented
    Scenario: Creating a ›for-car-model-variant‹ relationship with a different CAR MODEL VARIANT
      Given there exists a "RATING" "93 Percent"
      And there exists a "CAR MODEL VARIANT" "McLaren 750S"
      And there exists a "CAR MODEL VARIANT" "McLaren 750S (Alternative)"
      When the user creates a "for car model variant" relationship between "93 Percent" and "McLaren 750S"
      Then there should exist a "for car model variant" relationship between "93 Percent" and "McLaren 750S"
      When the user creates a "for car model variant" relationship between "93 Percent" and "McLaren 750S (Alternative)"
      Then there should exist a "for car model variant" relationship between "93 Percent" and "McLaren 750S (Alternative)"
      But there should exist NO "for car model variant" relationship between "93 Percent" and "McLaren 750S"
