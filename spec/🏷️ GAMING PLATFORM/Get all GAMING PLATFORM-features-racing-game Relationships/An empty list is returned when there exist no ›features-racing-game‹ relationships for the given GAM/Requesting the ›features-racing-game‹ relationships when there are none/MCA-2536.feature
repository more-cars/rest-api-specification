@REQ_MCA-2532
Feature: Get all GAMING PLATFORM-features-racing-game Relationships

  @RULE_MCA-2535
  Rule: An empty list is returned when there exist no ›features-racing-game‹ relationships for the given GAMING PLATFORM

    @TEST_MCA-2536 @implemented
    Scenario: Requesting the ›features-racing-game‹ relationships when there are none
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      And there exist 0 "features racing game" relationships for "PlayStation 5"
      When the user requests all "features racing game" relationships for "PlayStation 5"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
