@REQ_MCA-3475
Feature: Get all PROGRAMME EPISODE-features-car-model-variant Relationships

  @RULE_MCA-3478
  Rule: An empty list is returned when there exist no ›features-car-model-variant‹ relationships for the given PROGRAMME EPISODE

    @TEST_MCA-3479
    Scenario: Requesting the ›features-car-model-variant‹ relationships when there are none
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exist 0 "features car model variant" relationships for "The Holy Trinity"
      When the user requests all "features car model variant" relationships for "The Holy Trinity"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
