@REQ_MCA-3718
Feature: Delete CAR MODEL VARIANT-presented-at-motor-show Relationship
  As an API contributor
  I want to be able to disconnect MOTOR SHOWS from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-3721
  Rule: Requests to delete the ›presented-at-motor-show‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3724
    Scenario: Trying to delete a ›presented-at-motor-show‹ relationship where both IDs are invalid
      Given "CAR MODEL VARIANT" "BMW i8" does NOT exist
      And "MOTOR SHOW" "IAA Frankfurt 1999" does NOT exist
      When the user deletes the "presented at motor show" relationship between "BMW i8" and "IAA Frankfurt 1999"
      Then the request should be rejected with status code 404
