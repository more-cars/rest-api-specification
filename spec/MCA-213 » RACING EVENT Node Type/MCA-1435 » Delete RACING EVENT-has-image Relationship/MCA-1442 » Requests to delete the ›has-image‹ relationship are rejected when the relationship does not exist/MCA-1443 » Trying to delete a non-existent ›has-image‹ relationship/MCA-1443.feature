@REQ_MCA-1435
Feature: Delete RACING EVENT-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1442
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1443 @implemented
    Scenario: Trying to delete a non-existent ›has-image‹ relationship
      Given there exists a "RACING EVENT" "GP Silverstone"
      And there exists a "IMAGE" "Toyota Logo"
      And there exists NO "has image" relationship between "GP Silverstone" and "Toyota Logo"
      When the user deletes the "has image" relationship between "GP Silverstone" and "Toyota Logo"
      Then the request should be rejected with status code 404
