@REQ_MCA-3691
Feature: Delete MOTOR SHOW-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MOTOR SHOWS
  So I can clean up bad data or test data

  @RULE_MCA-3694
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3696 @implemented
    Scenario: Trying to delete a ›has-prime-image‹ relationship with invalid IMAGE ID
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And "IMAGE" "CES logo" does NOT exist
      When the user deletes the "has prime image" relationship between "IAA Frankfurt" and "CES logo"
      Then the request should be rejected with status code 404
