@REQ_MCA-3664
Feature: Delete MOTOR SHOW-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MOTOR SHOWS
  So I can clean up bad data or test data

  @RULE_MCA-3667
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3668 @implemented
    Scenario: Trying to delete a ›has-image‹ relationship with invalid MOTOR SHOW ID
      Given "MOTOR SHOW" "IAA Frankfurt" does NOT exist
      And there exists a "IMAGE" "Paris Motor Show logo"
      When the user deletes the "has image" relationship between "IAA Frankfurt" and "Paris Motor Show logo"
      Then the request should be rejected with status code 404
