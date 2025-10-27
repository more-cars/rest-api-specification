@REQ_MCA-1435
Feature: Delete RACING EVENT-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1436
  Rule: The ›has-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1437 @implemented
    Scenario: Deleting the ›has-image‹ relationship when it actually exists
      Given there exists a "RACING EVENT" "GP Silverstone"
      And there exists a "IMAGE" "Toyota Logo"
      And there exists a "has image" relationship "R" between "GP Silverstone" and "Toyota Logo"
      When the user deletes the "has image" relationship between "GP Silverstone" and "Toyota Logo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
