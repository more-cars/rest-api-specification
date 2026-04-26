@REQ_MCA-5388
Feature: Create MAGAZINE ISSUE-documents-lap-time Relationship

  @RULE_MCA-5397
  Rule: Each MAGAZINE ISSUE can be in a ›documents-lap-time‹ relationship with multiple LAP TIMES

    @TEST_MCA-5398
    Scenario: Creating multiple ›documents-lap-time‹ relationships
      Given there exists a "MAGAZINE ISSUE" "Top Gear 11_2025"
      And there exists a "LAP TIME" "fastest lap"
      And there exists a "LAP TIME" "fastest lap (Alternative)"
      When the user creates a "documents lap time" relationship between "Top Gear 11_2025" and "fastest lap"
      And the user creates a "documents lap time" relationship between "Top Gear 11_2025" and "fastest lap (Alternative)"
      Then there should exist a "documents lap time" relationship between "Top Gear 11_2025" and "fastest lap"
      And there should exist a "documents lap time" relationship between "Top Gear 11_2025" and "fastest lap (Alternative)"
