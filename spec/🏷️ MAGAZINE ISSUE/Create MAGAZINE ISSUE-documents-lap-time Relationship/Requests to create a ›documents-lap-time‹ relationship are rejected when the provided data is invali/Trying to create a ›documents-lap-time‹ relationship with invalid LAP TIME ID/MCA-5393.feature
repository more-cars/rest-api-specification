@REQ_MCA-5388
Feature: Create MAGAZINE ISSUE-documents-lap-time Relationship

  @RULE_MCA-5391
  Rule: Requests to create a ›documents-lap-time‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5393
    Scenario: Trying to create a ›documents-lap-time‹ relationship with invalid LAP TIME ID
      Given there exists a "MAGAZINE ISSUE" "Top Gear 11_2025"
      And "LAP TIME" "fastest lap" does NOT exist
      When the user creates a "documents lap time" relationship between "Top Gear 11_2025" and "fastest lap"
      Then the request should be rejected with status code 404
