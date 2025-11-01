@REQ_MCA-2114
Feature: Delete CAR MODEL VARIANT-achieved-session-result Relationship
  As an API contributor
  I want to be able to disconnect SESSION RESULTS from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-2117
  Rule: Requests to delete the ›achieved-session-result‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2120 @implemented
    Scenario: Trying to delete a ›achieved-session-result‹ relationship where both IDs are invalid
      Given "CAR MODEL VARIANT" "BMW M3 GTR" does NOT exist
      And "SESSION RESULT" "test result" does NOT exist
      When the user deletes the "achieved session result" relationship between "BMW M3 GTR" and "test result"
      Then the request should be rejected with status code 404
