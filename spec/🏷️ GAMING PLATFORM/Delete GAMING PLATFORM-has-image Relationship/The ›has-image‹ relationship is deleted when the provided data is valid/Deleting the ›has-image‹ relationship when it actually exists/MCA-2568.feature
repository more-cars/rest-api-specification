@REQ_MCA-2566
Feature: Delete GAMING PLATFORM-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from GAMING PLATFORMS
  So I can clean up bad data or test data

  @RULE_MCA-2567
  Rule: The ›has-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2568 @implemented
    Scenario: Deleting the ›has-image‹ relationship when it actually exists
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      And there exists a "IMAGE" "Xbox logo"
      And there exists a "has image" relationship "R" between "PlayStation 5" and "Xbox logo"
      When the user deletes the "has image" relationship between "PlayStation 5" and "Xbox logo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
