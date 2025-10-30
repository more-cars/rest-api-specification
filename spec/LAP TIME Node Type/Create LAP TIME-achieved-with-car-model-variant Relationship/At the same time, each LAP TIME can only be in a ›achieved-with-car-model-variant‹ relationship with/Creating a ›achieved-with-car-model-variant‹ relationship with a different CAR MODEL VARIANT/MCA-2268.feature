@REQ_MCA-2258
Feature: Create LAP TIME-achieved-with-car-model-variant Relationship

  @RULE_MCA-2267
  Rule: At the same time, each LAP TIME can only be in a ›achieved-with-car-model-variant‹ relationship with one CAR MODEL VARIANT

    @TEST_MCA-2268 @implemented
    Scenario: Creating a ›achieved-with-car-model-variant‹ relationship with a different CAR MODEL VARIANT
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "CAR MODEL VARIANT" "Opel Calibra V6"
      And there exists a "CAR MODEL VARIANT" "Opel Calibra V6 (Alternative)"
      When the user creates a "achieved with car model variant" relationship between "fastest lap" and "Opel Calibra V6"
      Then there should exist a "achieved with car model variant" relationship between "fastest lap" and "Opel Calibra V6"
      When the user creates a "achieved with car model variant" relationship between "fastest lap" and "Opel Calibra V6 (Alternative)"
      Then there should exist a "achieved with car model variant" relationship between "fastest lap" and "Opel Calibra V6 (Alternative)"
      But there should exist NO "achieved with car model variant" relationship between "fastest lap" and "Opel Calibra V6"
