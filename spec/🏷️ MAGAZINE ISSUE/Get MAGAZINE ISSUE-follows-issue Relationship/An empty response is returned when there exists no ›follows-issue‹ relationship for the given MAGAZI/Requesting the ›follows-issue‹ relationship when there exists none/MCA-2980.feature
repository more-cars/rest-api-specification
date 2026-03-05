@REQ_MCA-2976
Feature: Get MAGAZINE ISSUE-follows-issue Relationship

  @RULE_MCA-2979
  Rule: An empty response is returned when there exists no ›follows-issue‹ relationship for the given MAGAZINE ISSUE

    @TEST_MCA-2980 @implemented
    Scenario: Requesting the ›follows-issue‹ relationship when there exists none
      Given there exists a "MAGAZINE ISSUE" "Top Gear 3_2025"
      And there exists NO "follows issue" relationship for "Top Gear 3_2025"
      When the user requests the "follows issue" relationship for "Top Gear 3_2025"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
