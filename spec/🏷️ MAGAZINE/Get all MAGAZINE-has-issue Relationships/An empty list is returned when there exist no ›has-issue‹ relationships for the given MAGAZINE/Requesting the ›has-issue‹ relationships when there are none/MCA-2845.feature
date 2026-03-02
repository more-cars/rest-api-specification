@REQ_MCA-2841
Feature: Get all MAGAZINE-has-issue Relationships

  @RULE_MCA-2844
  Rule: An empty list is returned when there exist no ›has-issue‹ relationships for the given MAGAZINE

    @TEST_MCA-2845 @implemented
    Scenario: Requesting the ›has-issue‹ relationships when there are none
      Given there exists a "MAGAZINE" "Top Gear"
      And there exist 0 "has issue" relationships for "Top Gear"
      When the user requests all "has issue" relationships for "Top Gear"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
