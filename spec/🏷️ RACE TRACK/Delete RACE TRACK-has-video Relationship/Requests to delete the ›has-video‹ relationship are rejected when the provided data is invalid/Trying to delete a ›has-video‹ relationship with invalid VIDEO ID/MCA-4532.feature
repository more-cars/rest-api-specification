@REQ_MCA-4527
Feature: Delete RACE TRACK-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from RACE TRACKS
  So I can clean up bad data or test data

  @RULE_MCA-4530
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4532 @implemented
    Scenario: Trying to delete a ›has-video‹ relationship with invalid VIDEO ID
      Given there exists a "RACE TRACK" "Nürburgring"
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-video" relationship between "Nürburgring" and "Promo Video"
      Then the request should be rejected with status code 404
