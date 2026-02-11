@REQ_MCA-2455
Feature: Delete CAR MODEL VARIANT-is-featured-in-racing-game Relationship
  As an API contributor
  I want to be able to disconnect RACING GAMES from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-2458
  Rule: Requests to delete the ›is-featured-in-racing-game‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2459 @implemented
    Scenario: Trying to delete a ›is-featured-in-racing-game‹ relationship with invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "Trabant 601" does NOT exist
      And there exists a "RACING GAME" "Gran Turismo"
      When the user deletes the "is featured in racing game" relationship between "Trabant 601" and "Gran Turismo"
      Then the request should be rejected with status code 404
