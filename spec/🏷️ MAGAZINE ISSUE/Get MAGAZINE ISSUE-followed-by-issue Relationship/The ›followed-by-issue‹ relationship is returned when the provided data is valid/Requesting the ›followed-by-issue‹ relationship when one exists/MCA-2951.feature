@REQ_MCA-2949
Feature: Get MAGAZINE ISSUE-followed-by-issue Relationship

  @RULE_MCA-2950
  Rule: The ›followed-by-issue‹ relationship is returned when the provided data is valid

    @TEST_MCA-2951
    Scenario: Requesting the ›followed-by-issue‹ relationship when one exists
      Given there exists a "MAGAZINE ISSUE" "Top Gear 3_2025"
      And there exists a "followed by issue" relationship "R" for "Top Gear 3_2025"
      When the user requests the "followed by issue" relationship for "Top Gear 3_2025"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
