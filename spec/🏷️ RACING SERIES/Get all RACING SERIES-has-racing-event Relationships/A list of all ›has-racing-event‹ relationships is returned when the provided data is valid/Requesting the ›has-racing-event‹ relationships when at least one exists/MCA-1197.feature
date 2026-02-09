@REQ_MCA-1195
Feature: Get all RACING SERIES-has-racing-event Relationships

  @RULE_MCA-1196
  Rule: A list of all ›has-racing-event‹ relationships is returned when the provided data is valid

    @TEST_MCA-1197 @implemented
    Scenario: Requesting the ›has-racing-event‹ relationships when at least one exists
      Given there exists a "RACING SERIES" "Formula 1"
      And there exist 3 "has racing event" relationships for "Formula 1"
      When the user requests all "has racing event" relationships for "Formula 1"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has racing event" relationships
