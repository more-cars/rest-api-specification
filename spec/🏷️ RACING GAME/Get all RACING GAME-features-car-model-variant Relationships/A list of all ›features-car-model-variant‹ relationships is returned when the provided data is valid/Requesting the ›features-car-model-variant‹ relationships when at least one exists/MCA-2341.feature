@REQ_MCA-2339
Feature: Get all RACING GAME-features-car-model-variant Relationships

  @RULE_MCA-2340
  Rule: A list of all ›features-car-model-variant‹ relationships is returned when the provided data is valid

    @TEST_MCA-2341 @implemented
    Scenario: Requesting the ›features-car-model-variant‹ relationships when at least one exists
      Given there exists a "RACING GAME" "Gran Turismo"
      And there exist 3 "features car model variant" relationships for "Gran Turismo"
      When the user requests all "features car model variant" relationships for "Gran Turismo"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "features car model variant" relationships
