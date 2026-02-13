@REQ_MCA-2593
Feature: Delete GAMING PLATFORM-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from GAMING PLATFORMS
  So I can clean up bad data or test data

  @RULE_MCA-2594
  Rule: The ›has-prime-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2595 @implemented
    Scenario: Deleting the ›has-prime-image‹ relationship when it actually exists
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      And there exists a "IMAGE" "Xbox logo"
      And there exists a "has prime image" relationship "R" between "PlayStation 5" and "Xbox logo"
      When the user deletes the "has prime image" relationship between "PlayStation 5" and "Xbox logo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
