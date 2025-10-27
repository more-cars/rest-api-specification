@REQ_MCA-1659
Feature: Get all RACING SESSION-has-image Relationships

  @RULE_MCA-1660
  Rule: A list of all ›has-image‹ relationships is returned when the provided data is valid

    @TEST_MCA-1661
    Scenario: Requesting the ›has-image‹ relationships when at least one exists
      Given there exists a "RACING SESSION" "Grand Prix"
      And there exist 3 "has image" relationships for "Grand Prix"
      When the user requests all "has image" relationships for "Grand Prix"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has image" relationships
