@REQ_MCA-1282
Feature: Create RACING EVENT-belongs-to-racing-series Relationship

  @RULE_MCA-1285
  Rule: Requests to create a ›belongs-to-racing-series‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1288 @implemented
    Scenario: Trying to create a ›belongs-to-racing-series‹ relationship where both IDs are invalid
      Given "RACING EVENT" "Silverstone GP" does NOT exist
      And "RACING SERIES" "Formula 1" does NOT exist
      When the user creates a "belongs to racing series" relationship between "Silverstone GP" and "Formula 1"
      Then the request should be rejected with status code 404
