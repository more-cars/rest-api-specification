@REQ_MCA-2670
Feature: Get all MAGAZINE-has-image Relationships

  @RULE_MCA-2671
  Rule: A list of all ›has-image‹ relationships is returned when the provided data is valid

    @TEST_MCA-2672 @implemented
    Scenario: Requesting the ›has-image‹ relationships when at least one exists
      Given there exists a "MAGAZINE" "Top Gear"
      And there exist 3 "has image" relationships for "Top Gear"
      When the user requests all "has image" relationships for "Top Gear"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has image" relationships
