@REQ_MCA-2965
Feature: Create MAGAZINE ISSUE-follows-issue Relationship

  @RULE_MCA-2972
  Rule: The same ›follows-issue‹ relationship between the same nodes can only be created once

    @TEST_MCA-2973
    Scenario: Trying to create the same ›follows-issue‹ relationship again
      Given there exists a "MAGAZINE ISSUE" "Top Gear 3_2025"
      And there exists a "MAGAZINE ISSUE" "Top Gear 2_2025"
      And there exists a "follows issue" relationship between "Top Gear 3_2025" and "Top Gear 2_2025"
      When the user creates a "follows issue" relationship between "Top Gear 3_2025" and "Top Gear 2_2025"
      Then the response should return with status code 304
