@REQ_MCA-5388
Feature: Create MAGAZINE ISSUE-documents-lap-time Relationship

  @RULE_MCA-5395
  Rule: The same ›documents-lap-time‹ relationship between the same nodes can only be created once

    @TEST_MCA-5396 @implemented
    Scenario: Trying to create the same ›documents-lap-time‹ relationship again
      Given there exists a "MAGAZINE ISSUE" "Top Gear 11_2025"
      And there exists a "LAP TIME" "fastest lap"
      And there exists a "documents lap time" relationship between "Top Gear 11_2025" and "fastest lap"
      When the user creates a "documents lap time" relationship between "Top Gear 11_2025" and "fastest lap"
      Then the response should return with status code 304
