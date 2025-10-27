@REQ_MCA-1482
Feature: Get all RACE TRACK-hosted-racing-event Relationships

  @RULE_MCA-1483
  Rule: A list of all ›hosted-racing-event‹ relationships is returned when the provided data is valid

    @TEST_MCA-1484 @implemented
    Scenario: Requesting the ›hosted-racing-event‹ relationships when at least one exists
      Given there exists a "RACE TRACK" "Red Bull Ring"
      And there exist 3 "hosted racing event" relationships for "Red Bull Ring"
      When the user requests all "hosted racing event" relationships for "Red Bull Ring"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "hosted racing event" relationships
