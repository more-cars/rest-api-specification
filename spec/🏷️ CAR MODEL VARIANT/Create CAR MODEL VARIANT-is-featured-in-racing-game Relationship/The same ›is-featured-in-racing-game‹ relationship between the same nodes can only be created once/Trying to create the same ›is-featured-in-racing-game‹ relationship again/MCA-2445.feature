@REQ_MCA-2437
Feature: Create CAR MODEL VARIANT-is-featured-in-racing-game Relationship

  @RULE_MCA-2444
  Rule: The same ›is-featured-in-racing-game‹ relationship between the same nodes can only be created once

    @TEST_MCA-2445 @implemented
    Scenario: Trying to create the same ›is-featured-in-racing-game‹ relationship again
      Given there exists a "CAR MODEL VARIANT" "Aston Martin DB7"
      And there exists a "RACING GAME" "Gran Turismo"
      And there exists a "is featured in racing game" relationship between "Aston Martin DB7" and "Gran Turismo"
      When the user creates a "is featured in racing game" relationship between "Aston Martin DB7" and "Gran Turismo"
      Then the response should return with status code 304
