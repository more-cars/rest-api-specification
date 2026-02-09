@REQ_MCA-2231
Feature: Create SESSION RESULT-achieved-with-car-model-variant Relationship

  @RULE_MCA-2234
  Rule: Requests to create a ›achieved-with-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2235 @implemented
    Scenario: Trying to create a ›achieved-with-car-model-variant‹ relationship with invalid SESSION RESULT ID
      Given "SESSION RESULT" "1st place" does NOT exist
      And there exists a "CAR MODEL VARIANT" "Ferrari 499P"
      When the user creates a "achieved with car model variant" relationship between "1st place" and "Ferrari 499P"
      Then the request should be rejected with status code 404
