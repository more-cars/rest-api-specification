@REQ_MCA-4154
Feature: Create CAR MODEL VARIANT-has-price Relationship

  @RULE_MCA-4163
  Rule: Each CAR MODEL VARIANT can be in a ›has-price‹ relationship with multiple PRICES

    @TEST_MCA-4164 @implemented
    Scenario: Creating multiple ›has-price‹ relationships
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exists a "PRICE" "base price"
      And there exists a "PRICE" "base price (Alternative)"
      When the user creates a "has price" relationship between "BMW M3" and "base price"
      And the user creates a "has price" relationship between "BMW M3" and "base price (Alternative)"
      Then there should exist a "has price" relationship between "BMW M3" and "base price"
      And there should exist a "has price" relationship between "BMW M3" and "base price (Alternative)"
