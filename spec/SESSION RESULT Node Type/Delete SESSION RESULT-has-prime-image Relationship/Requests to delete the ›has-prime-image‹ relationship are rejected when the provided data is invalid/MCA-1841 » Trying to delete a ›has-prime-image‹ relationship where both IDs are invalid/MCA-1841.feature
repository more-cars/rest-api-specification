@REQ_MCA-1835
Feature: Delete SESSION RESULT-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from SESSION RESULTS
  So I can clean up bad data or test data

  @RULE_MCA-1838
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1841
    Scenario: Trying to delete a ›has-prime-image‹ relationship where both IDs are invalid
      Given "SESSION RESULT" "1st place" does NOT exist
      And "IMAGE" "BMW logo" does NOT exist
      When the user deletes the "has prime image" relationship between "1st place" and "BMW logo"
      Then the request should be rejected with status code 404
