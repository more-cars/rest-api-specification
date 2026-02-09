@REQ_MCA-2339
Feature: Get all RACING GAME-features-car-model-variant Relationships

  @RULE_MCA-2342
  Rule: An empty list is returned when there exist no ›features-car-model-variant‹ relationships for the given RACING GAME

    @TEST_MCA-2343
    Scenario: Requesting the ›features-car-model-variant‹ relationships when there are none
      Given there exists a "RACING GAME" "Gran Turismo"
      And there exist 0 "features car model variant" relationships for "Gran Turismo"
      When the user requests all "features car model variant" relationships for "Gran Turismo"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
