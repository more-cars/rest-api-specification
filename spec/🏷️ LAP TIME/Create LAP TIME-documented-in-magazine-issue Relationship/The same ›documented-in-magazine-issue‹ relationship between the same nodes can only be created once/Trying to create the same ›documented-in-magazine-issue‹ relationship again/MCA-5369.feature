@REQ_MCA-5361
Feature: Create LAP TIME-documented-in-magazine-issue Relationship

  @RULE_MCA-5368
  Rule: The same ›documented-in-magazine-issue‹ relationship between the same nodes can only be created once

    @TEST_MCA-5369 @implemented
    Scenario: Trying to create the same ›documented-in-magazine-issue‹ relationship again
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "MAGAZINE ISSUE" "Top Gear 11_2025"
      And there exists a "documented in magazine issue" relationship between "fastest lap" and "Top Gear 11_2025"
      When the user creates a "documented in magazine issue" relationship between "fastest lap" and "Top Gear 11_2025"
      Then the response should return with status code 304
