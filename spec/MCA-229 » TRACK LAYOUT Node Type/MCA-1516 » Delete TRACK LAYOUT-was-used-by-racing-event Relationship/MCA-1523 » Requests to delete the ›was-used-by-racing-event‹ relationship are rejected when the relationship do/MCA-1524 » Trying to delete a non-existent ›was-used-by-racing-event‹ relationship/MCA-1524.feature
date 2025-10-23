@REQ_MCA-1516
Feature: Delete TRACK LAYOUT-was-used-by-racing-event Relationship
  As an API contributor
  I want to be able to disconnect RACING EVENTS from TRACK LAYOUTS
  So I can clean up bad data or test data

  @RULE_MCA-1523
  Rule: Requests to delete the ›was-used-by-racing-event‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1524 @implemented
    Scenario: Trying to delete a non-existent ›was-used-by-racing-event‹ relationship
      Given there exists a "TRACK LAYOUT" "Club Circuit"
      And there exists a "RACING EVENT" "GP Silverstone"
      And there exists NO "was used by racing event" relationship between "Club Circuit" and "GP Silverstone"
      When the user deletes the "was used by racing event" relationship between "Club Circuit" and "GP Silverstone"
      Then the request should be rejected with status code 404
