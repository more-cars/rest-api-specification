@REQ_MCA-3037
Feature: Delete RACING EVENT-covered-by-magazine-issue Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINE ISSUES from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-3044
  Rule: Requests to delete the ›covered-by-magazine-issue‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3045 @implemented
    Scenario: Trying to delete a non-existent ›covered-by-magazine-issue‹ relationship
      Given there exists a "RACING EVENT" "F1 GP Australia"
      And there exists a "MAGAZINE ISSUE" "EV Today 2_2025"
      And there exists NO "covered by magazine issue" relationship between "F1 GP Australia" and "EV Today 2_2025"
      When the user deletes the "covered by magazine issue" relationship between "F1 GP Australia" and "EV Today 2_2025"
      Then the request should be rejected with status code 404
