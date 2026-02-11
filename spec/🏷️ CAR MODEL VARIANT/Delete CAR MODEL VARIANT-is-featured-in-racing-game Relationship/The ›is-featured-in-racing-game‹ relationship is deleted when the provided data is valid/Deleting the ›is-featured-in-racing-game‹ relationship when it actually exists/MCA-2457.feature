@REQ_MCA-2455
Feature: Delete CAR MODEL VARIANT-is-featured-in-racing-game Relationship
  As an API contributor
  I want to be able to disconnect RACING GAMES from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-2456
  Rule: The ›is-featured-in-racing-game‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2457 @implemented
    Scenario: Deleting the ›is-featured-in-racing-game‹ relationship when it actually exists
      Given there exists a "CAR MODEL VARIANT" "Trabant 601"
      And there exists a "RACING GAME" "Gran Turismo"
      And there exists a "is featured in racing game" relationship "R" between "Trabant 601" and "Gran Turismo"
      When the user deletes the "is featured in racing game" relationship between "Trabant 601" and "Gran Turismo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
