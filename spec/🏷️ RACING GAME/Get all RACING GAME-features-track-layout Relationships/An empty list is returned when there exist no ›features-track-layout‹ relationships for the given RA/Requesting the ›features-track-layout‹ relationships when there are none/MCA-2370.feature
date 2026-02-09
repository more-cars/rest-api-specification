@REQ_MCA-2366
Feature: Get all RACING GAME-features-track-layout Relationships

  @RULE_MCA-2369
  Rule: An empty list is returned when there exist no ›features-track-layout‹ relationships for the given RACING GAME

    @TEST_MCA-2370
    Scenario: Requesting the ›features-track-layout‹ relationships when there are none
      Given there exists a "RACING GAME" "F1 2025"
      And there exist 0 "features track layout" relationships for "F1 2025"
      When the user requests all "features track layout" relationships for "F1 2025"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
