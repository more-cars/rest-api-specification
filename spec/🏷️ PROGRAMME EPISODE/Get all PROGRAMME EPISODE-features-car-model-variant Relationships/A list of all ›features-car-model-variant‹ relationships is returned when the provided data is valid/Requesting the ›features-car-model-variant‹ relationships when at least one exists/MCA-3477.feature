@REQ_MCA-3475
Feature: Get all PROGRAMME EPISODE-features-car-model-variant Relationships

  @RULE_MCA-3476
  Rule: A list of all ›features-car-model-variant‹ relationships is returned when the provided data is valid

    @TEST_MCA-3477 @implemented
    Scenario: Requesting the ›features-car-model-variant‹ relationships when at least one exists
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exist 3 "features car model variant" relationships for "The Holy Trinity"
      When the user requests all "features car model variant" relationships for "The Holy Trinity"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "features car model variant" relationships
