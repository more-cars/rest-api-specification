@REQ_MCA-1946
Feature: Delete LAP TIME-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from LAP TIMES
  So I can clean up bad data or test data

  @RULE_MCA-1949
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1952 @implemented
    Scenario: Trying to delete a ›has-image‹ relationship where both IDs are invalid
      Given "LAP TIME" "fastest lap" does NOT exist
      And "IMAGE" "BMW logo" does NOT exist
      When the user deletes the "has image" relationship between "fastest lap" and "BMW logo"
      Then the request should be rejected with status code 404
