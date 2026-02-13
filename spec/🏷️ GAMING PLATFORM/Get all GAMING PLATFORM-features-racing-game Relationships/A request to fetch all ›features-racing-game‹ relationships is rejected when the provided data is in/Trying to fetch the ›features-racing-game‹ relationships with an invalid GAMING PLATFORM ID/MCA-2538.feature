@REQ_MCA-2532
Feature: Get all GAMING PLATFORM-features-racing-game Relationships

  @RULE_MCA-2537
  Rule: A request to fetch all ›features-racing-game‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-2538 @implemented
    Scenario: Trying to fetch the ›features-racing-game‹ relationships with an invalid GAMING PLATFORM ID
      Given "GAMING PLATFORM" "PlayStation 5" does NOT exist
      When the user requests all "features racing game" relationships for "PlayStation 5"
      Then the request should be rejected with status code 404
