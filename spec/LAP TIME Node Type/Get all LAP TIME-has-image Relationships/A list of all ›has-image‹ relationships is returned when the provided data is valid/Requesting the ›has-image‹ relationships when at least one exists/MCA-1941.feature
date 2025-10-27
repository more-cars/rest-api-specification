@REQ_MCA-1939
Feature: Get all LAP TIME-has-image Relationships

  @RULE_MCA-1940
  Rule: A list of all ›has-image‹ relationships is returned when the provided data is valid

    @TEST_MCA-1941
    Scenario: Requesting the ›has-image‹ relationships when at least one exists
      Given there exists a "LAP TIME" "fastest lap"
      And there exist 3 "has image" relationships for "fastest lap"
      When the user requests all "has image" relationships for "fastest lap"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has image" relationships
