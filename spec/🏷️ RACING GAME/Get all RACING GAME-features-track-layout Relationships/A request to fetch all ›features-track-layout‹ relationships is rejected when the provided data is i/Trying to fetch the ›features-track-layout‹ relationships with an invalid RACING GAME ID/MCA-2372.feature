@REQ_MCA-2366
Feature: Get all RACING GAME-features-track-layout Relationships

  @RULE_MCA-2371
  Rule: A request to fetch all ›features-track-layout‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-2372 @implemented
    Scenario: Trying to fetch the ›features-track-layout‹ relationships with an invalid RACING GAME ID
      Given "RACING GAME" "F1 2025" does NOT exist
      When the user requests all "features track layout" relationships for "F1 2025"
      Then the request should be rejected with status code 404
