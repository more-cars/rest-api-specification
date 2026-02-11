@REQ_MCA-2437
Feature: Create CAR MODEL VARIANT-is-featured-in-racing-game Relationship

  @RULE_MCA-2440
  Rule: Requests to create a ›is-featured-in-racing-game‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2442 @implemented
    Scenario: Trying to create a ›is-featured-in-racing-game‹ relationship with invalid RACING GAME ID
      Given there exists a "CAR MODEL VARIANT" "Aston Martin DB7"
      And "RACING GAME" "Gran Turismo" does NOT exist
      When the user creates a "is featured in racing game" relationship between "Aston Martin DB7" and "Gran Turismo"
      Then the request should be rejected with status code 404
