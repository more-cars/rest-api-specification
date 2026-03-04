@REQ_MCA-3030
Feature: Get all RACING EVENT-covered-by-magazine-issue Relationships

  @RULE_MCA-3033
  Rule: An empty list is returned when there exist no ›covered-by-magazine-issue‹ relationships for the given RACING EVENT

    @TEST_MCA-3034
    Scenario: Requesting the ›covered-by-magazine-issue‹ relationships when there are none
      Given there exists a "RACING EVENT" "F1 GP Australia"
      And there exist 0 "covered by magazine issue" relationships for "F1 GP Australia"
      When the user requests all "covered by magazine issue" relationships for "F1 GP Australia"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
