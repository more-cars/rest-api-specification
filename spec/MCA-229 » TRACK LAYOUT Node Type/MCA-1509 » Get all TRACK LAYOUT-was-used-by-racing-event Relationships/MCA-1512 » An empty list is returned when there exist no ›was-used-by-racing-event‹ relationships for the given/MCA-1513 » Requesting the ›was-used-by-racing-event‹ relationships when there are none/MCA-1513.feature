@REQ_MCA-1509
Feature: Get all TRACK LAYOUT-was-used-by-racing-event Relationships

  @RULE_MCA-1512
  Rule: An empty list is returned when there exist no ›was-used-by-racing-event‹ relationships for the given TRACK LAYOUT

    @TEST_MCA-1513 @implemented
    Scenario: Requesting the ›was-used-by-racing-event‹ relationships when there are none
      Given there exists a "TRACK LAYOUT" "Grand Prix Circuit"
      And there exist 0 "was used by racing event" relationships for "Grand Prix Circuit"
      When the user requests all "was used by racing event" relationships for "Grand Prix Circuit"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
