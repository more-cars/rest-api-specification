@REQ_MCA-3700
Feature: Create CAR MODEL VARIANT-presented-at-motor-show Relationship

  @RULE_MCA-3709
  Rule: Each CAR MODEL VARIANT can be in a ›presented-at-motor-show‹ relationship with multiple MOTOR SHOWS

    @TEST_MCA-3710
    Scenario: Creating multiple ›presented-at-motor-show‹ relationships
      Given there exists a "CAR MODEL VARIANT" "BMW i8"
      And there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "MOTOR SHOW" "IAA Frankfurt (Alternative)"
      When the user creates a "presented at motor show" relationship between "BMW i8" and "IAA Frankfurt"
      And the user creates a "presented at motor show" relationship between "BMW i8" and "IAA Frankfurt (Alternative)"
      Then there should exist a "presented at motor show" relationship between "BMW i8" and "IAA Frankfurt"
      And there should exist a "presented at motor show" relationship between "BMW i8" and "IAA Frankfurt (Alternative)"
