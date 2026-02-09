@REQ_MCA-2231
Feature: Create SESSION RESULT-achieved-with-car-model-variant Relationship

  @RULE_MCA-2240
  Rule: At the same time, each SESSION RESULT can only be in a ›achieved-with-car-model-variant‹ relationship with one CAR MODEL VARIANT

    @TEST_MCA-2241 @implemented
    Scenario: Creating a ›achieved-with-car-model-variant‹ relationship with a different CAR MODEL VARIANT
      Given there exists a "SESSION RESULT" "1st place"
      And there exists a "CAR MODEL VARIANT" "Ferrari 499P"
      And there exists a "CAR MODEL VARIANT" "Ferrari 499P (Alternative)"
      When the user creates a "achieved with car model variant" relationship between "1st place" and "Ferrari 499P"
      Then there should exist a "achieved with car model variant" relationship between "1st place" and "Ferrari 499P"
      When the user creates a "achieved with car model variant" relationship between "1st place" and "Ferrari 499P (Alternative)"
      Then there should exist a "achieved with car model variant" relationship between "1st place" and "Ferrari 499P (Alternative)"
      But there should exist NO "achieved with car model variant" relationship between "1st place" and "Ferrari 499P"
