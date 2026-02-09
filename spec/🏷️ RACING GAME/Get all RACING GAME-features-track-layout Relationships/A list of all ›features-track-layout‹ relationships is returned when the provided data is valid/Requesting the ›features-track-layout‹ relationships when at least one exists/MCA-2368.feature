@REQ_MCA-2366
Feature: Get all RACING GAME-features-track-layout Relationships

  @RULE_MCA-2367
  Rule: A list of all ›features-track-layout‹ relationships is returned when the provided data is valid

    @TEST_MCA-2368
    Scenario: Requesting the ›features-track-layout‹ relationships when at least one exists
      Given there exists a "RACING GAME" "F1 2025"
      And there exist 3 "features track layout" relationships for "F1 2025"
      When the user requests all "features track layout" relationships for "F1 2025"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "features track layout" relationships
