@REQ_MCA-1482
Feature: Get all RACE TRACK-hosted-racing-event Relationships

  @RULE_MCA-1487
  Rule: A request to fetch all ›hosted-racing-event‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-1488 @implemented
    Scenario: Trying to fetch the ›hosted-racing-event‹ relationships with an invalid RACE TRACK ID
      Given "RACE TRACK" "Red Bull Ring" does NOT exist
      When the user requests all "hosted racing event" relationships for "Red Bull Ring"
      Then the request should be rejected with status code 404
