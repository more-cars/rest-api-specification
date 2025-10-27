@REQ_MCA-1516
Feature: Delete TRACK LAYOUT-was-used-by-racing-event Relationship
  As an API contributor
  I want to be able to disconnect RACING EVENTS from TRACK LAYOUTS
  So I can clean up bad data or test data

  @RULE_MCA-1519
  Rule: Requests to delete the ›was-used-by-racing-event‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1522 @implemented
    Scenario: Trying to delete a ›was-used-by-racing-event‹ relationship where both IDs are invalid
      Given "TRACK LAYOUT" "Club Circuit" does NOT exist
      And "RACING EVENT" "GP Silverstone" does NOT exist
      When the user deletes the "was used by racing event" relationship between "Club Circuit" and "GP Silverstone"
      Then the request should be rejected with status code 404
