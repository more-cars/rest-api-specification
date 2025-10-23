@REQ_MCA-1482
Feature: Get all RACE TRACK-hosted-racing-event Relationships

  @RULE_MCA-1485
  Rule: An empty list is returned when there exist no ›hosted-racing-event‹ relationships for the given RACE TRACK

    @TEST_MCA-1486 @implemented
    Scenario: Requesting the ›hosted-racing-event‹ relationships when there are none
      Given there exists a "RACE TRACK" "Red Bull Ring"
      And there exist 0 "hosted racing event" relationships for "Red Bull Ring"
      When the user requests all "hosted racing event" relationships for "Red Bull Ring"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
