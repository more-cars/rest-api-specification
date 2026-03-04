@REQ_MCA-2949
Feature: Get MAGAZINE ISSUE-followed-by-issue Relationship

  @RULE_MCA-2952
  Rule: An empty response is returned when there exists no ›followed-by-issue‹ relationship for the given MAGAZINE ISSUE

    @TEST_MCA-2953
    Scenario: Requesting the ›followed-by-issue‹ relationship when there exists none
      Given there exists a "MAGAZINE ISSUE" "Top Gear 3_2025"
      And there exists NO "followed by issue" relationship for "Top Gear 3_2025"
      When the user requests the "followed by issue" relationship for "Top Gear 3_2025"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
