@REQ_MCA-2069
Feature: Create CAR MODEL VARIANT-is-variant-of Relationship

  @RULE_MCA-2078
  Rule: At the same time, each CAR MODEL VARIANT can only be in a ›is-variant-of‹ relationship with one CAR MODEL

    @TEST_MCA-2079 @implemented
    Scenario: Creating a ›is-variant-of‹ relationship with a different CAR MODEL
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exists a "CAR MODEL" "3-series"
      And there exists a "CAR MODEL" "3-series (Alternative)"
      When the user creates a "is variant of" relationship between "BMW M3" and "3-series"
      Then there should exist a "is variant of" relationship between "BMW M3" and "3-series"
      When the user creates a "is variant of" relationship between "BMW M3" and "3-series (Alternative)"
      Then there should exist a "is variant of" relationship between "BMW M3" and "3-series (Alternative)"
      But there should exist NO "is variant of" relationship between "BMW M3" and "3-series"
