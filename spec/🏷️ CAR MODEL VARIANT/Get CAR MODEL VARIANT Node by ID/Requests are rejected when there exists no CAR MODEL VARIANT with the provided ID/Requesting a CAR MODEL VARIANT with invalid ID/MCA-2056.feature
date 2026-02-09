@REQ_MCA-2052
Feature: Get CAR MODEL VARIANT Node by ID
  As an API consumer
  I want to be able to request a specific CAR MODEL VARIANT
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-2055
  Rule: Requests are rejected when there exists no CAR MODEL VARIANT with the provided ID

    @TEST_MCA-2056 @implemented
    Scenario: Requesting a CAR MODEL VARIANT with invalid ID
      When the user requests a non-existing "CAR MODEL VARIANT"
      Then the request should be rejected with status code 404
