@REQ_MCA-2868
Feature: Get all MAGAZINE ISSUE-presents-car-model-variant Relationships

  @RULE_MCA-2871
  Rule: An empty list is returned when there exist no ›presents-car-model-variant‹ relationships for the given MAGAZINE ISSUE

    @TEST_MCA-2872
    Scenario: Requesting the ›presents-car-model-variant‹ relationships when there are none
      Given there exists a "MAGAZINE ISSUE" "Best Supercars 2025"
      And there exist 0 "presents car model variant" relationships for "Best Supercars 2025"
      When the user requests all "presents car model variant" relationships for "Best Supercars 2025"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
