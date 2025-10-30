@REQ_MCA-2249
Feature: Delete SESSION RESULT-achieved-with-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from SESSION RESULTS
  So I can clean up bad data or test data

  @RULE_MCA-2252
  Rule: Requests to delete the ›achieved-with-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2255 @implemented
    Scenario: Trying to delete a ›achieved-with-car-model-variant‹ relationship where both IDs are invalid
      Given "SESSION RESULT" "test result" does NOT exist
      And "CAR MODEL VARIANT" "Ferrari 499P" does NOT exist
      When the user deletes the "achieved with car model variant" relationship between "test result" and "Ferrari 499P"
      Then the request should be rejected with status code 404
