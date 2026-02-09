@REQ_MCA-996
Feature: Delete RACE TRACK-has-layout Relationship
  As an API contributor
  I want to be able to disconnect TRACK LAYOUTS from RACE TRACKS
  So I can clean up bad data or test data

  @RULE_MCA-999
  Rule: Requests to delete the ›has-layout‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1000 @implemented
    Scenario: Trying to delete a ›has-layout‹ relationship with invalid RACE TRACK ID
      Given "RACE TRACK" "Hockenheimring" does NOT exist
      And there exists a "TRACK LAYOUT" "GP Circuit"
      When the user deletes the "has layout" relationship between "Hockenheimring" and "GP Circuit"
      Then the request should be rejected with status code 404
