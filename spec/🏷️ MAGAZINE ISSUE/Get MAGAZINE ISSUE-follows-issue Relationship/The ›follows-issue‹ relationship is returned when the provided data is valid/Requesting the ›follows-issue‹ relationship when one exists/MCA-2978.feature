@REQ_MCA-2976
Feature: Get MAGAZINE ISSUE-follows-issue Relationship

  @RULE_MCA-2977
  Rule: The ›follows-issue‹ relationship is returned when the provided data is valid

    @TEST_MCA-2978
    Scenario: Requesting the ›follows-issue‹ relationship when one exists
      Given there exists a "MAGAZINE ISSUE" "Top Gear 3_2025"
      And there exists a "follows issue" relationship "R" for "Top Gear 3_2025"
      When the user requests the "follows issue" relationship for "Top Gear 3_2025"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
