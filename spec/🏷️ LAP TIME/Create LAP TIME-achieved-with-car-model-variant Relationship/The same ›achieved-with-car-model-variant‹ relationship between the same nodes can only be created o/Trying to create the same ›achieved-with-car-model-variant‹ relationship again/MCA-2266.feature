@REQ_MCA-2258
Feature: Create LAP TIME-achieved-with-car-model-variant Relationship

  @RULE_MCA-2265
  Rule: The same ›achieved-with-car-model-variant‹ relationship between the same nodes can only be created once

    @TEST_MCA-2266 @implemented
    Scenario: Trying to create the same ›achieved-with-car-model-variant‹ relationship again
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "CAR MODEL VARIANT" "Opel Calibra V6"
      And there exists a "achieved with car model variant" relationship between "fastest lap" and "Opel Calibra V6"
      When the user creates a "achieved with car model variant" relationship between "fastest lap" and "Opel Calibra V6"
      Then the response should return with status code 304
