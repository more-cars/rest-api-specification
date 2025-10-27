@REQ_MCA-897
Feature: Delete CAR MODEL-is-successor-of Relationship
  As an API contributor
  I want to be able to disconnect CAR MODELS from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-900
  Rule: Requests to delete the ›is-successor-of‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-903 @implemented
    Scenario: Trying to delete a ›is-successor-of‹ relationship where both IDs are invalid
      Given "CAR MODEL" "Golf IV" does NOT exist
      And "CAR MODEL" "Corsa C" does NOT exist
      When the user deletes the "is successor of" relationship between "Golf IV" and "Corsa C"
      Then the request should be rejected with status code 404
