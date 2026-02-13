@REQ_MCA-2532
Feature: Get all GAMING PLATFORM-features-racing-game Relationships

  @RULE_MCA-2533
  Rule: A list of all ›features-racing-game‹ relationships is returned when the provided data is valid

    @TEST_MCA-2534 @implemented
    Scenario: Requesting the ›features-racing-game‹ relationships when at least one exists
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      And there exist 3 "features racing game" relationships for "PlayStation 5"
      When the user requests all "features racing game" relationships for "PlayStation 5"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "features racing game" relationships
