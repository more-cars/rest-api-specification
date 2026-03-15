@REQ_MCA-3619
Feature: Create MOTOR SHOW-presents-car-model-variant Relationship

  @RULE_MCA-3628
  Rule: Each MOTOR SHOW can be in a ›presents-car-model-variant‹ relationship with multiple CAR MODEL VARIANTS

    @TEST_MCA-3629 @implemented
    Scenario: Creating multiple ›presents-car-model-variant‹ relationships
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "CAR MODEL VARIANT" "BMW M760Li"
      And there exists a "CAR MODEL VARIANT" "BMW M760Li (Alternative)"
      When the user creates a "presents car model variant" relationship between "IAA Frankfurt" and "BMW M760Li"
      And the user creates a "presents car model variant" relationship between "IAA Frankfurt" and "BMW M760Li (Alternative)"
      Then there should exist a "presents car model variant" relationship between "IAA Frankfurt" and "BMW M760Li"
      And there should exist a "presents car model variant" relationship between "IAA Frankfurt" and "BMW M760Li (Alternative)"
