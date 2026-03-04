@REQ_MCA-2922
Feature: Get all MAGAZINE ISSUE-covers-racing-event Relationships

  @RULE_MCA-2923
  Rule: A list of all ›covers-racing-event‹ relationships is returned when the provided data is valid

    @TEST_MCA-2924
    Scenario: Requesting the ›covers-racing-event‹ relationships when at least one exists
      Given there exists a "MAGAZINE ISSUE" "F1 Saison Start"
      And there exist 3 "covers racing event" relationships for "F1 Saison Start"
      When the user requests all "covers racing event" relationships for "F1 Saison Start"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "covers racing event" relationships
