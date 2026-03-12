@REQ_MCA-3664
Feature: Delete MOTOR SHOW-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MOTOR SHOWS
  So I can clean up bad data or test data

  @RULE_MCA-3667
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3670 @implemented
    Scenario: Trying to delete a ›has-image‹ relationship where both IDs are invalid
      Given "MOTOR SHOW" "IAA Frankfurt" does NOT exist
      And "IMAGE" "Paris Motor Show logo" does NOT exist
      When the user deletes the "has image" relationship between "IAA Frankfurt" and "Paris Motor Show logo"
      Then the request should be rejected with status code 404
