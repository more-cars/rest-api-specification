@REQ_MCA-3846
Feature: Create MODEL CAR-is-scale-model-of-car-model-variant Relationship

  @RULE_MCA-3855
  Rule: At the same time, each MODEL CAR can only be in a ›is-scale-model-of-car-model-variant‹ relationship with one CAR MODEL VARIANT

    @TEST_MCA-3856
    Scenario: Creating a ›is-scale-model-of-car-model-variant‹ relationship with a different CAR MODEL VARIANT
      Given there exists a "MODEL CAR" "F40 Matchbox"
      And there exists a "CAR MODEL VARIANT" "Ferrari F40"
      And there exists a "CAR MODEL VARIANT" "Ferrari F40 (Alternative)"
      When the user creates a "is scale model of car model variant" relationship between "F40 Matchbox" and "Ferrari F40"
      Then there should exist a "is scale model of car model variant" relationship between "F40 Matchbox" and "Ferrari F40"
      When the user creates a "is scale model of car model variant" relationship between "F40 Matchbox" and "Ferrari F40 (Alternative)"
      Then there should exist a "is scale model of car model variant" relationship between "F40 Matchbox" and "Ferrari F40 (Alternative)"
      But there should exist NO "is scale model of car model variant" relationship between "F40 Matchbox" and "Ferrari F40"
