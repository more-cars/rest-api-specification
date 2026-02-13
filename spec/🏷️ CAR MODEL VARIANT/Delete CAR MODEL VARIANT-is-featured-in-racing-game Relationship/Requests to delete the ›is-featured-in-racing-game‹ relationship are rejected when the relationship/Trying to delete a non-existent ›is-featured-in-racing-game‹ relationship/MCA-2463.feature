@REQ_MCA-2455
Feature: Delete CAR MODEL VARIANT-is-featured-in-racing-game Relationship
  As an API contributor
  I want to be able to disconnect RACING GAMES from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-2462
  Rule: Requests to delete the ›is-featured-in-racing-game‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2463 @implemented
    Scenario: Trying to delete a non-existent ›is-featured-in-racing-game‹ relationship
      Given there exists a "CAR MODEL VARIANT" "Trabant 601"
      And there exists a "RACING GAME" "Gran Turismo"
      And there exists NO "is featured in racing game" relationship between "Trabant 601" and "Gran Turismo"
      When the user deletes the "is featured in racing game" relationship between "Trabant 601" and "Gran Turismo"
      Then the request should be rejected with status code 404
