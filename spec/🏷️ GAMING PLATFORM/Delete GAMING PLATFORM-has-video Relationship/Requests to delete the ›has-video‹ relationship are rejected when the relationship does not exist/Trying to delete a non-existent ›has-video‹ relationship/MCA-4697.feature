@REQ_MCA-4689
Feature: Delete GAMING PLATFORM-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from GAMING PLATFORMS
  So I can clean up bad data or test data

  @RULE_MCA-4696
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-4697
    Scenario: Trying to delete a non-existent ›has-video‹ relationship
      Given there exists a "GAMING PLATFORM" "Xbox"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-video" relationship between "Xbox" and "Promo Video"
      When the user deletes the "has-video" relationship between "Xbox" and "Promo Video"
      Then the request should be rejected with status code 404
