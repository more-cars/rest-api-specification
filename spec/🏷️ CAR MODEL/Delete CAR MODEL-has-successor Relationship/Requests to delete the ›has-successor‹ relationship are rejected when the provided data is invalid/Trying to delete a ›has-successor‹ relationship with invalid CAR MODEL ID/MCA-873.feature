@REQ_MCA-868
Feature: Delete CAR MODEL-has-successor Relationship
  As an API contributor
  I want to be able to disconnect CAR MODELS from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-871
  Rule: Requests to delete the ›has-successor‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-873 @implemented
    Scenario: Trying to delete a ›has-successor‹ relationship with invalid CAR MODEL ID
      Given there exists a "CAR MODEL" "Colt"
      And "CAR MODEL" "Impreza" does NOT exist
      When the user deletes the "has successor" relationship between "Colt" and "Impreza"
      Then the request should be rejected with status code 404
