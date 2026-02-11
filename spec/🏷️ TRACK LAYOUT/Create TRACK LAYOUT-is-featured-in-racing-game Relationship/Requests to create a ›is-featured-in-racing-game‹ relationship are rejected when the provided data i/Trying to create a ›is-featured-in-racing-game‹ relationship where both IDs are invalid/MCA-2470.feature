@REQ_MCA-2464
Feature: Create TRACK LAYOUT-is-featured-in-racing-game Relationship

  @RULE_MCA-2467
  Rule: Requests to create a ›is-featured-in-racing-game‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2470 @implemented
    Scenario: Trying to create a ›is-featured-in-racing-game‹ relationship where both IDs are invalid
      Given "TRACK LAYOUT" "Nordschleife" does NOT exist
      And "RACING GAME" "Assetto Corsa EVO" does NOT exist
      When the user creates a "is featured in racing game" relationship between "Nordschleife" and "Assetto Corsa EVO"
      Then the request should be rejected with status code 404
