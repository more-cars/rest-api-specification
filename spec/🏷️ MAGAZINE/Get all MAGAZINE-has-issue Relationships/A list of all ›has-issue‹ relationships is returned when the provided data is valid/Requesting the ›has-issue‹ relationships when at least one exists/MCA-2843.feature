@REQ_MCA-2841
Feature: Get all MAGAZINE-has-issue Relationships

  @RULE_MCA-2842
  Rule: A list of all ›has-issue‹ relationships is returned when the provided data is valid

    @TEST_MCA-2843 @implemented
    Scenario: Requesting the ›has-issue‹ relationships when at least one exists
      Given there exists a "MAGAZINE" "Top Gear"
      And there exist 3 "has issue" relationships for "Top Gear"
      When the user requests all "has issue" relationships for "Top Gear"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has issue" relationships
