@REQ_MCA-1435
Feature: Delete RACING EVENT-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1438
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1439 @implemented
    Scenario: Trying to delete a ›has-image‹ relationship with invalid RACING EVENT ID
      Given "RACING EVENT" "GP Silverstone" does NOT exist
      And there exists a "IMAGE" "Toyota Logo"
      When the user deletes the "has image" relationship between "GP Silverstone" and "Toyota Logo"
      Then the request should be rejected with status code 404
