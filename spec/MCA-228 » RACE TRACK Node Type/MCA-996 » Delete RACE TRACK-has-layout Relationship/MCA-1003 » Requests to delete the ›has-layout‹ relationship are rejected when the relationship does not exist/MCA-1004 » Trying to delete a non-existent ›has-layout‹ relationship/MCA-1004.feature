@REQ_MCA-996
Feature: Delete RACE TRACK-has-layout Relationship
  As an API contributor
  I want to be able to disconnect TRACK LAYOUTS from RACE TRACKS
  So I can clean up bad data or test data

  @RULE_MCA-1003
  Rule: Requests to delete the ›has-layout‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1004 @implemented
    Scenario: Trying to delete a non-existent ›has-layout‹ relationship
      Given there exists a "RACE TRACK" "Hockenheimring"
      And there exists a "TRACK LAYOUT" "GP Circuit"
      And there exists NO "has layout" relationship between "Hockenheimring" and "GP Circuit"
      When the user deletes the "has layout" relationship between "Hockenheimring" and "GP Circuit"
      Then the request should be rejected with status code 404
