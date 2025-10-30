@REQ_MCA-2141
Feature: Delete CAR MODEL VARIANT-achieved-lap-time Relationship
  As an API contributor
  I want to be able to disconnect LAP TIMES from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-2144
  Rule: Requests to delete the ›achieved-lap-time‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2147 @implemented
    Scenario: Trying to delete a ›achieved-lap-time‹ relationship where both IDs are invalid
      Given "CAR MODEL VARIANT" "BMW M3 GTR" does NOT exist
      And "LAP TIME" "test lap" does NOT exist
      When the user deletes the "achieved lap time" relationship between "BMW M3 GTR" and "test lap"
      Then the request should be rejected with status code 404
