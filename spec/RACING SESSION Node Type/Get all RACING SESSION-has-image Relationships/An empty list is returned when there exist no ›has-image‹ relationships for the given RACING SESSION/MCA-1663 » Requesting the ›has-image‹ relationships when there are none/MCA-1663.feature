@REQ_MCA-1659
Feature: Get all RACING SESSION-has-image Relationships

  @RULE_MCA-1662
  Rule: An empty list is returned when there exist no ›has-image‹ relationships for the given RACING SESSION

    @TEST_MCA-1663
    Scenario: Requesting the ›has-image‹ relationships when there are none
      Given there exists a "RACING SESSION" "Grand Prix"
      And there exist 0 "has image" relationships for "Grand Prix"
      When the user requests all "has image" relationships for "Grand Prix"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
