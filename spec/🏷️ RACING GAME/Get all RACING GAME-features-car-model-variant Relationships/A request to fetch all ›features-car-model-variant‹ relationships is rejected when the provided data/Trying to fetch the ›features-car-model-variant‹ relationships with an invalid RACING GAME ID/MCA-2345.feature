@REQ_MCA-2339
Feature: Get all RACING GAME-features-car-model-variant Relationships

  @RULE_MCA-2344
  Rule: A request to fetch all ›features-car-model-variant‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-2345 @implemented
    Scenario: Trying to fetch the ›features-car-model-variant‹ relationships with an invalid RACING GAME ID
      Given "RACING GAME" "Gran Turismo" does NOT exist
      When the user requests all "features car model variant" relationships for "Gran Turismo"
      Then the request should be rejected with status code 404
