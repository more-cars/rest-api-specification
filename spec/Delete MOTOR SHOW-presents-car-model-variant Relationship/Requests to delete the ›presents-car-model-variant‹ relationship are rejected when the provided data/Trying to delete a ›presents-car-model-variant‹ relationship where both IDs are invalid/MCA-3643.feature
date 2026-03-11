@REQ_MCA-3637
Feature: Delete MOTOR SHOW-presents-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from MOTOR SHOWS
  So I can clean up bad data or test data

  @RULE_MCA-3640
  Rule: Requests to delete the ›presents-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3643
    Scenario: Trying to delete a ›presents-car-model-variant‹ relationship where both IDs are invalid
      Given "MOTOR SHOW" "IAA Frankfurt" does NOT exist
      And "CAR MODEL VARIANT" "Lada Samara" does NOT exist
      When the user deletes the "presents car model variant" relationship between "IAA Frankfurt" and "Lada Samara"
      Then the request should be rejected with status code 404
