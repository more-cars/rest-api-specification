@REQ_MCA-3630
Feature: Get all MOTOR SHOW-presents-car-model-variant Relationships

  @RULE_MCA-3631
  Rule: A list of all ›presents-car-model-variant‹ relationships is returned when the provided data is valid

    @TEST_MCA-3632
    Scenario: Requesting the ›presents-car-model-variant‹ relationships when at least one exists
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exist 3 "presents car model variant" relationships for "IAA Frankfurt"
      When the user requests all "presents car model variant" relationships for "IAA Frankfurt"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "presents car model variant" relationships
