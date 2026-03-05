@REQ_MCA-3019
Feature: Create RACING EVENT-covered-by-magazine-issue Relationship

  @RULE_MCA-3022
  Rule: Requests to create a ›covered-by-magazine-issue‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3023 @implemented
    Scenario: Trying to create a ›covered-by-magazine-issue‹ relationship with invalid RACING EVENT ID
      Given "RACING EVENT" "F1 GP Australia" does NOT exist
      And there exists a "MAGAZINE ISSUE" "F1 Season Start"
      When the user creates a "covered by magazine issue" relationship between "F1 GP Australia" and "F1 Season Start"
      Then the request should be rejected with status code 404
