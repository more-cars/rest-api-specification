@REQ_MCA-2475
Feature: Get all TRACK LAYOUT-is-featured-in-racing-game Relationships

  @RULE_MCA-2476
  Rule: A list of all ›is-featured-in-racing-game‹ relationships is returned when the provided data is valid

    @TEST_MCA-2477 @implemented
    Scenario: Requesting the ›is-featured-in-racing-game‹ relationships when at least one exists
      Given there exists a "TRACK LAYOUT" "Nordschleife"
      And there exist 3 "is featured in racing game" relationships for "Nordschleife"
      When the user requests all "is featured in racing game" relationships for "Nordschleife"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "is featured in racing game" relationships
