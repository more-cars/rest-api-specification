@REQ_MCA-2938
Feature: Create MAGAZINE ISSUE-followed-by-issue Relationship

  @RULE_MCA-2945
  Rule: The same ›followed-by-issue‹ relationship between the same nodes can only be created once

    @TEST_MCA-2946
    Scenario: Trying to create the same ›followed-by-issue‹ relationship again
      Given there exists a "MAGAZINE ISSUE" "Top Gear 3_2025"
      And there exists a "MAGAZINE ISSUE" "Top Gear 4_2025"
      And there exists a "followed by issue" relationship between "Top Gear 3_2025" and "Top Gear 4_2025"
      When the user creates a "followed by issue" relationship between "Top Gear 3_2025" and "Top Gear 4_2025"
      Then the response should return with status code 304
