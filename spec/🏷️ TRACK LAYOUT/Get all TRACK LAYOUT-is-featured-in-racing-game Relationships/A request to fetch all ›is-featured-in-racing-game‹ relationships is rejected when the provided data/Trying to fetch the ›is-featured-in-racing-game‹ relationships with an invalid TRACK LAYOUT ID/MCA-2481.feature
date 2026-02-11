@REQ_MCA-2475
Feature: Get all TRACK LAYOUT-is-featured-in-racing-game Relationships

  @RULE_MCA-2480
  Rule: A request to fetch all ›is-featured-in-racing-game‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-2481 @implemented
    Scenario: Trying to fetch the ›is-featured-in-racing-game‹ relationships with an invalid TRACK LAYOUT ID
      Given "TRACK LAYOUT" "Nordschleife" does NOT exist
      When the user requests all "is featured in racing game" relationships for "Nordschleife"
      Then the request should be rejected with status code 404
