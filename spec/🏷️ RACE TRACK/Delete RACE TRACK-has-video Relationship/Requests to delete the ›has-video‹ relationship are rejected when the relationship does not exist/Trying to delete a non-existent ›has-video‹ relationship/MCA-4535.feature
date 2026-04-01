@REQ_MCA-4527
Feature: Delete RACE TRACK-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from RACE TRACKS
  So I can clean up bad data or test data

  @RULE_MCA-4534
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-4535 @implemented
    Scenario: Trying to delete a non-existent ›has-video‹ relationship
      Given there exists a "RACE TRACK" "Nürburgring"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-video" relationship between "Nürburgring" and "Promo Video"
      When the user deletes the "has-video" relationship between "Nürburgring" and "Promo Video"
      Then the request should be rejected with status code 404
