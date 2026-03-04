@REQ_MCA-2868
Feature: Get all MAGAZINE ISSUE-presents-car-model-variant Relationships

  @RULE_MCA-2873
  Rule: A request to fetch all ›presents-car-model-variant‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-2874
    Scenario: Trying to fetch the ›presents-car-model-variant‹ relationships with an invalid MAGAZINE ISSUE ID
      Given "MAGAZINE ISSUE" "Best Supercars 2025" does NOT exist
      When the user requests all "presents car model variant" relationships for "Best Supercars 2025"
      Then the request should be rejected with status code 404
