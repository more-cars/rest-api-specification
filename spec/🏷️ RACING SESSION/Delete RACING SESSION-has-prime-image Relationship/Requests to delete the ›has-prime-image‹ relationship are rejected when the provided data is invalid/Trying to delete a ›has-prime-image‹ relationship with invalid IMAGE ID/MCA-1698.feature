@REQ_MCA-1693
Feature: Delete RACING SESSION-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING SESSIONS
  So I can clean up bad data or test data

  @RULE_MCA-1696
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1698 @implemented
    Scenario: Trying to delete a ›has-prime-image‹ relationship with invalid IMAGE ID
      Given there exists a "RACING SESSION" "Grand Prix"
      And "IMAGE" "BMW logo" does NOT exist
      When the user deletes the "has prime image" relationship between "Grand Prix" and "BMW logo"
      Then the request should be rejected with status code 404
