@REQ_MCA-1408
Feature: Delete RACING EVENT-used-the-track-layout Relationship
  As an API contributor
  I want to be able to disconnect TRACK LAYOUTS from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1411
  Rule: Requests to delete the ›used-the-track-layout‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1413 @implemented
    Scenario: Trying to delete a ›used-the-track-layout‹ relationship with invalid TRACK LAYOUT ID
      Given there exists a "RACING EVENT" "GP Austria"
      And "TRACK LAYOUT" "Club Circuit" does NOT exist
      When the user deletes the "used the track layout" relationship between "GP Austria" and "Club Circuit"
      Then the request should be rejected with status code 404
