@REQ_MCA-2670
Feature: Get all MAGAZINE-has-image Relationships

  @RULE_MCA-2673
  Rule: An empty list is returned when there exist no ›has-image‹ relationships for the given MAGAZINE

    @TEST_MCA-2674 @implemented
    Scenario: Requesting the ›has-image‹ relationships when there are none
      Given there exists a "MAGAZINE" "Top Gear"
      And there exist 0 "has image" relationships for "Top Gear"
      When the user requests all "has image" relationships for "Top Gear"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
