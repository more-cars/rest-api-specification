@REQ_MCA-3019
Feature: Create RACING EVENT-covered-by-magazine-issue Relationship

  @RULE_MCA-3022
  Rule: Requests to create a ›covered-by-magazine-issue‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3024 @implemented
    Scenario: Trying to create a ›covered-by-magazine-issue‹ relationship with invalid MAGAZINE ISSUE ID
      Given there exists a "RACING EVENT" "F1 GP Australia"
      And "MAGAZINE ISSUE" "F1 Season Start" does NOT exist
      When the user creates a "covered by magazine issue" relationship between "F1 GP Australia" and "F1 Season Start"
      Then the request should be rejected with status code 404
