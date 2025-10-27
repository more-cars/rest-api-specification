@REQ_MCA-1489
Feature: Delete RACE TRACK-hosted-racing-event Relationship
  As an API contributor
  I want to be able to disconnect RACING EVENTS from RACE TRACKS
  So I can clean up bad data or test data

  @RULE_MCA-1492
  Rule: Requests to delete the ›hosted-racing-event‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1493 @implemented
    Scenario: Trying to delete a ›hosted-racing-event‹ relationship with invalid RACE TRACK ID
      Given "RACE TRACK" "Red Bull Ring" does NOT exist
      And there exists a "RACING EVENT" "Goodwood Festival of Speed"
      When the user deletes the "hosted racing event" relationship between "Red Bull Ring" and "Goodwood Festival of Speed"
      Then the request should be rejected with status code 404
