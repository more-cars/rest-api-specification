@REQ_MCA-1509
Feature: Get all TRACK LAYOUT-was-used-by-racing-event Relationships

  @RULE_MCA-1510
  Rule: A list of all ›was-used-by-racing-event‹ relationships is returned when the provided data is valid

    @TEST_MCA-1511 @implemented
    Scenario: Requesting the ›was-used-by-racing-event‹ relationships when at least one exists
      Given there exists a "TRACK LAYOUT" "Grand Prix Circuit"
      And there exist 3 "was used by racing event" relationships for "Grand Prix Circuit"
      When the user requests all "was used by racing event" relationships for "Grand Prix Circuit"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "was used by racing event" relationships
