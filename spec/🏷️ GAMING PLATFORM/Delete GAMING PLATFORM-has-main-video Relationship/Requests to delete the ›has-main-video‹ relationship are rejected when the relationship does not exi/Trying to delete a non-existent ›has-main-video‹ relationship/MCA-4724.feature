@REQ_MCA-4716
Feature: Delete GAMING PLATFORM-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a GAMING PLATFORM
  So I can clean up bad data or test data

  @RULE_MCA-4723
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-4724
    Scenario: Trying to delete a non-existent ›has-main-video‹ relationship
      Given there exists a "GAMING PLATFORM" "Xbox"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-main-video" relationship between "Xbox" and "Promo Video"
      When the user deletes the "has-main-video" relationship between "Xbox" and "Promo Video"
      Then the request should be rejected with status code 404
