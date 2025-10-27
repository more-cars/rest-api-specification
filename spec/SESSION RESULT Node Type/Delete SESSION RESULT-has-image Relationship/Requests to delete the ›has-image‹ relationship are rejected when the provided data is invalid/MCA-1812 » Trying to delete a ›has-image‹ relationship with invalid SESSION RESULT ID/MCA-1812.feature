@REQ_MCA-1808
Feature: Delete SESSION RESULT-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from SESSION RESULTS
  So I can clean up bad data or test data

  @RULE_MCA-1811
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1812
    Scenario: Trying to delete a ›has-image‹ relationship with invalid SESSION RESULT ID
      Given "SESSION RESULT" "1st place" does NOT exist
      And there exists a "IMAGE" "BMW logo"
      When the user deletes the "has image" relationship between "1st place" and "BMW logo"
      Then the request should be rejected with status code 404
