@REQ_MCA-2448
Feature: Get all CAR MODEL VARIANT-is-featured-in-racing-game Relationships

  @RULE_MCA-2453
  Rule: A request to fetch all ›is-featured-in-racing-game‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-2454 @implemented
    Scenario: Trying to fetch the ›is-featured-in-racing-game‹ relationships with an invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "Aston Martin DB7" does NOT exist
      When the user requests all "is featured in racing game" relationships for "Aston Martin DB7"
      Then the request should be rejected with status code 404
