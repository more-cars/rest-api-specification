@REQ_MCA-2868
Feature: Get all MAGAZINE ISSUE-presents-car-model-variant Relationships

  @RULE_MCA-2869
  Rule: A list of all ›presents-car-model-variant‹ relationships is returned when the provided data is valid

    @TEST_MCA-2870
    Scenario: Requesting the ›presents-car-model-variant‹ relationships when at least one exists
      Given there exists a "MAGAZINE ISSUE" "Best Supercars 2025"
      And there exist 3 "presents car model variant" relationships for "Best Supercars 2025"
      When the user requests all "presents car model variant" relationships for "Best Supercars 2025"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "presents car model variant" relationships
