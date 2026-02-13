@REQ_MCA-2566
Feature: Delete GAMING PLATFORM-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from GAMING PLATFORMS
  So I can clean up bad data or test data

  @RULE_MCA-2573
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2574 @implemented
    Scenario: Trying to delete a non-existent ›has-image‹ relationship
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      And there exists a "IMAGE" "Xbox logo"
      And there exists NO "has image" relationship between "PlayStation 5" and "Xbox logo"
      When the user deletes the "has image" relationship between "PlayStation 5" and "Xbox logo"
      Then the request should be rejected with status code 404
