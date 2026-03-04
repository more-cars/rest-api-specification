@REQ_MCA-3037
Feature: Delete RACING EVENT-covered-by-magazine-issue Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINE ISSUES from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-3038
  Rule: The ›covered-by-magazine-issue‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3039
    Scenario: Deleting the ›covered-by-magazine-issue‹ relationship when it actually exists
      Given there exists a "RACING EVENT" "F1 GP Australia"
      And there exists a "MAGAZINE ISSUE" "EV Today 2_2025"
      And there exists a "covered by magazine issue" relationship "R" between "F1 GP Australia" and "EV Today 2_2025"
      When the user deletes the "covered by magazine issue" relationship between "F1 GP Australia" and "EV Today 2_2025"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
