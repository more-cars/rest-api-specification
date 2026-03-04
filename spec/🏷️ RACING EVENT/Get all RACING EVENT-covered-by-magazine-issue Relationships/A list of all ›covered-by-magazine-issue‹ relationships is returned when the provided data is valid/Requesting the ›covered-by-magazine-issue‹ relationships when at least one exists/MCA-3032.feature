@REQ_MCA-3030
Feature: Get all RACING EVENT-covered-by-magazine-issue Relationships

  @RULE_MCA-3031
  Rule: A list of all ›covered-by-magazine-issue‹ relationships is returned when the provided data is valid

    @TEST_MCA-3032
    Scenario: Requesting the ›covered-by-magazine-issue‹ relationships when at least one exists
      Given there exists a "RACING EVENT" "F1 GP Australia"
      And there exist 3 "covered by magazine issue" relationships for "F1 GP Australia"
      When the user requests all "covered by magazine issue" relationships for "F1 GP Australia"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "covered by magazine issue" relationships
