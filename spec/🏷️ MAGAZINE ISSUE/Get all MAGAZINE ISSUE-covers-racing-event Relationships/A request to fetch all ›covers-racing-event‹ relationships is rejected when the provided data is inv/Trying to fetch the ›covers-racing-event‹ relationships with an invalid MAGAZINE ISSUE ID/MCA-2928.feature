@REQ_MCA-2922
Feature: Get all MAGAZINE ISSUE-covers-racing-event Relationships

  @RULE_MCA-2927
  Rule: A request to fetch all ›covers-racing-event‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-2928
    Scenario: Trying to fetch the ›covers-racing-event‹ relationships with an invalid MAGAZINE ISSUE ID
      Given "MAGAZINE ISSUE" "F1 Saison Start" does NOT exist
      When the user requests all "covers racing event" relationships for "F1 Saison Start"
      Then the request should be rejected with status code 404
