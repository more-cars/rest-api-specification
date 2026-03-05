@REQ_MCA-3037
Feature: Delete RACING EVENT-covered-by-magazine-issue Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINE ISSUES from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-3040
  Rule: Requests to delete the ›covered-by-magazine-issue‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3041 @implemented
    Scenario: Trying to delete a ›covered-by-magazine-issue‹ relationship with invalid RACING EVENT ID
      Given "RACING EVENT" "F1 GP Australia" does NOT exist
      And there exists a "MAGAZINE ISSUE" "EV Today 2_2025"
      When the user deletes the "covered by magazine issue" relationship between "F1 GP Australia" and "EV Today 2_2025"
      Then the request should be rejected with status code 404
