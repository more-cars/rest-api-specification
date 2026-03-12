@REQ_MCA-3664
Feature: Delete MOTOR SHOW-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MOTOR SHOWS
  So I can clean up bad data or test data

  @RULE_MCA-3665
  Rule: The ›has-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3666 @implemented
    Scenario: Deleting the ›has-image‹ relationship when it actually exists
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "IMAGE" "Paris Motor Show logo"
      And there exists a "has image" relationship "R" between "IAA Frankfurt" and "Paris Motor Show logo"
      When the user deletes the "has image" relationship between "IAA Frankfurt" and "Paris Motor Show logo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
