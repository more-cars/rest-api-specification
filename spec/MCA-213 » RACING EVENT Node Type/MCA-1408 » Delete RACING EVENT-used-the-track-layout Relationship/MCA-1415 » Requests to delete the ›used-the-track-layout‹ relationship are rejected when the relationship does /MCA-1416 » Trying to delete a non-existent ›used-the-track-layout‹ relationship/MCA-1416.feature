@REQ_MCA-1408
Feature: Delete RACING EVENT-used-the-track-layout Relationship
  As an API contributor
  I want to be able to disconnect TRACK LAYOUTS from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1415
  Rule: Requests to delete the ›used-the-track-layout‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1416 @implemented
    Scenario: Trying to delete a non-existent ›used-the-track-layout‹ relationship
      Given there exists a "RACING EVENT" "GP Austria"
      And there exists a "TRACK LAYOUT" "Club Circuit"
      And there exists NO "used the track layout" relationship between "GP Austria" and "Club Circuit"
      When the user deletes the "used the track layout" relationship between "GP Austria" and "Club Circuit"
      Then the request should be rejected with status code 404
