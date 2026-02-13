@REQ_MCA-2566
Feature: Delete GAMING PLATFORM-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from GAMING PLATFORMS
  So I can clean up bad data or test data

  @RULE_MCA-2569
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2570 @implemented
    Scenario: Trying to delete a ›has-image‹ relationship with invalid GAMING PLATFORM ID
      Given "GAMING PLATFORM" "PlayStation 5" does NOT exist
      And there exists a "IMAGE" "Xbox logo"
      When the user deletes the "has image" relationship between "PlayStation 5" and "Xbox logo"
      Then the request should be rejected with status code 404
