@REQ_MCA-1516
Feature: Delete TRACK LAYOUT-was-used-by-racing-event Relationship
  As an API contributor
  I want to be able to disconnect RACING EVENTS from TRACK LAYOUTS
  So I can clean up bad data or test data

  @RULE_MCA-1517
  Rule: The ›was-used-by-racing-event‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1518 @implemented
    Scenario: Deleting the ›was-used-by-racing-event‹ relationship when it actually exists
      Given there exists a "TRACK LAYOUT" "Club Circuit"
      And there exists a "RACING EVENT" "GP Silverstone"
      And there exists a "was used by racing event" relationship "R" between "Club Circuit" and "GP Silverstone"
      When the user deletes the "was used by racing event" relationship between "Club Circuit" and "GP Silverstone"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
