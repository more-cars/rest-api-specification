@REQ_MCA-1489
Feature: Delete RACE TRACK-hosted-racing-event Relationship
  As an API contributor
  I want to be able to disconnect RACING EVENTS from RACE TRACKS
  So I can clean up bad data or test data

  @RULE_MCA-1490
  Rule: The ›hosted-racing-event‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1491 @implemented
    Scenario: Deleting the ›hosted-racing-event‹ relationship when it actually exists
      Given there exists a "RACE TRACK" "Red Bull Ring"
      And there exists a "RACING EVENT" "Goodwood Festival of Speed"
      And there exists a "hosted racing event" relationship "R" between "Red Bull Ring" and "Goodwood Festival of Speed"
      When the user deletes the "hosted racing event" relationship between "Red Bull Ring" and "Goodwood Festival of Speed"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
