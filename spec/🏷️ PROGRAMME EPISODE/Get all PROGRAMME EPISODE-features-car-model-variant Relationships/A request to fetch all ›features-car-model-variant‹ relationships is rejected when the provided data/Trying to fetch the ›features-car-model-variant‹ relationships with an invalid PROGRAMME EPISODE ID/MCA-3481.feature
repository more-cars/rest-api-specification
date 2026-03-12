@REQ_MCA-3475
Feature: Get all PROGRAMME EPISODE-features-car-model-variant Relationships

  @RULE_MCA-3480
  Rule: A request to fetch all ›features-car-model-variant‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-3481 @implemented
    Scenario: Trying to fetch the ›features-car-model-variant‹ relationships with an invalid PROGRAMME EPISODE ID
      Given "PROGRAMME EPISODE" "The Holy Trinity" does NOT exist
      When the user requests all "features car model variant" relationships for "The Holy Trinity"
      Then the request should be rejected with status code 404
