@REQ_MCA-2052
Feature: Get CAR MODEL VARIANT Node by ID
  As an API consumer
  I want to be able to request a specific CAR MODEL VARIANT
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-2053
  Rule: Requesting a CAR MODEL VARIANT with a valid ID returns the respective node

    @TEST_MCA-2054 @implemented
    Scenario: Requesting a CAR MODEL VARIANT with valid ID
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      When the user requests the "CAR MODEL VARIANT" "BMW M3"
      Then the response should return with status code 200
      And the response should return the "CAR MODEL VARIANT" "BMW M3"
