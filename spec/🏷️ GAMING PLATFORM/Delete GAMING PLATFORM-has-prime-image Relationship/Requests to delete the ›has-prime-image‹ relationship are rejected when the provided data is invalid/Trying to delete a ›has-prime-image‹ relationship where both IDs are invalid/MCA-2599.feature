@REQ_MCA-2593
Feature: Delete GAMING PLATFORM-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from GAMING PLATFORMS
  So I can clean up bad data or test data

  @RULE_MCA-2596
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2599 @implemented
    Scenario: Trying to delete a ›has-prime-image‹ relationship where both IDs are invalid
      Given "GAMING PLATFORM" "PlayStation 5" does NOT exist
      And "IMAGE" "Xbox logo" does NOT exist
      When the user deletes the "has prime image" relationship between "PlayStation 5" and "Xbox logo"
      Then the request should be rejected with status code 404
