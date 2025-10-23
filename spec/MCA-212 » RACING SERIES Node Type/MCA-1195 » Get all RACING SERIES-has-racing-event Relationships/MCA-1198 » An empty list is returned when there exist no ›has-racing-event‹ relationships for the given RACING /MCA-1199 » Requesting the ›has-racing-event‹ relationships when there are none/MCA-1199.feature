@REQ_MCA-1195
Feature: Get all RACING SERIES-has-racing-event Relationships

  @RULE_MCA-1198
  Rule: An empty list is returned when there exist no ›has-racing-event‹ relationships for the given RACING SERIES

    @TEST_MCA-1199 @implemented
    Scenario: Requesting the ›has-racing-event‹ relationships when there are none
      Given there exists a "RACING SERIES" "Formula 1"
      And there exist 0 "has racing event" relationships for "Formula 1"
      When the user requests all "has racing event" relationships for "Formula 1"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
