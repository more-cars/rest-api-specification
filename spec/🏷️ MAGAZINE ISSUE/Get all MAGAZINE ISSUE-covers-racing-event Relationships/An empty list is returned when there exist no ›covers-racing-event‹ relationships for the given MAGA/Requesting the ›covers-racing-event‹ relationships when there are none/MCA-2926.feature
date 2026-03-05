@REQ_MCA-2922
Feature: Get all MAGAZINE ISSUE-covers-racing-event Relationships

  @RULE_MCA-2925
  Rule: An empty list is returned when there exist no ›covers-racing-event‹ relationships for the given MAGAZINE ISSUE

    @TEST_MCA-2926 @implemented
    Scenario: Requesting the ›covers-racing-event‹ relationships when there are none
      Given there exists a "MAGAZINE ISSUE" "F1 Saison Start"
      And there exist 0 "covers racing event" relationships for "F1 Saison Start"
      When the user requests all "covers racing event" relationships for "F1 Saison Start"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
