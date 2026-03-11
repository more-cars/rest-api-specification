@REQ_MCA-3630
Feature: Get all MOTOR SHOW-presents-car-model-variant Relationships

  @RULE_MCA-3635
  Rule: A request to fetch all ›presents-car-model-variant‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-3636
    Scenario: Trying to fetch the ›presents-car-model-variant‹ relationships with an invalid MOTOR SHOW ID
      Given "MOTOR SHOW" "IAA Frankfurt" does NOT exist
      When the user requests all "presents car model variant" relationships for "IAA Frankfurt"
      Then the request should be rejected with status code 404
