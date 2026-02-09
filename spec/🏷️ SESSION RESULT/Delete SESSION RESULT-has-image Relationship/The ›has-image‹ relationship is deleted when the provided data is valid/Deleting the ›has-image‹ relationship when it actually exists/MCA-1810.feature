@REQ_MCA-1808
Feature: Delete SESSION RESULT-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from SESSION RESULTS
  So I can clean up bad data or test data

  @RULE_MCA-1809
  Rule: The ›has-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1810 @implemented
    Scenario: Deleting the ›has-image‹ relationship when it actually exists
      Given there exists a "SESSION RESULT" "1st place"
      And there exists a "IMAGE" "BMW logo"
      And there exists a "has image" relationship "R" between "1st place" and "BMW logo"
      When the user deletes the "has image" relationship between "1st place" and "BMW logo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
