@REQ_MCA-2475
Feature: Get all TRACK LAYOUT-is-featured-in-racing-game Relationships

  @RULE_MCA-2478
  Rule: An empty list is returned when there exist no ›is-featured-in-racing-game‹ relationships for the given TRACK LAYOUT

    @TEST_MCA-2479 @implemented
    Scenario: Requesting the ›is-featured-in-racing-game‹ relationships when there are none
      Given there exists a "TRACK LAYOUT" "Nordschleife"
      And there exist 0 "is featured in racing game" relationships for "Nordschleife"
      When the user requests all "is featured in racing game" relationships for "Nordschleife"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
