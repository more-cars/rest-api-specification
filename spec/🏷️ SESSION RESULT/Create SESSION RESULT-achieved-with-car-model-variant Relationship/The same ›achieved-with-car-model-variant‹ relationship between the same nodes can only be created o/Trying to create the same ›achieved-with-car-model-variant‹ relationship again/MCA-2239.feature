@REQ_MCA-2231
Feature: Create SESSION RESULT-achieved-with-car-model-variant Relationship

  @RULE_MCA-2238
  Rule: The same ›achieved-with-car-model-variant‹ relationship between the same nodes can only be created once

    @TEST_MCA-2239 @implemented
    Scenario: Trying to create the same ›achieved-with-car-model-variant‹ relationship again
      Given there exists a "SESSION RESULT" "1st place"
      And there exists a "CAR MODEL VARIANT" "Ferrari 499P"
      And there exists a "achieved with car model variant" relationship between "1st place" and "Ferrari 499P"
      When the user creates a "achieved with car model variant" relationship between "1st place" and "Ferrari 499P"
      Then the response should return with status code 304
