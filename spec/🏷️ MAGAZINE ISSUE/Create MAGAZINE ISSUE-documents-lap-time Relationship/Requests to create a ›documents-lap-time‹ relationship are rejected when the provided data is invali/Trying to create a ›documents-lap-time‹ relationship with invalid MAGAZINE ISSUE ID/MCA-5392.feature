@REQ_MCA-5388
Feature: Create MAGAZINE ISSUE-documents-lap-time Relationship

  @RULE_MCA-5391
  Rule: Requests to create a ›documents-lap-time‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5392 @implemented
    Scenario: Trying to create a ›documents-lap-time‹ relationship with invalid MAGAZINE ISSUE ID
      Given "MAGAZINE ISSUE" "Top Gear 11_2025" does NOT exist
      And there exists a "LAP TIME" "fastest lap"
      When the user creates a "documents lap time" relationship between "Top Gear 11_2025" and "fastest lap"
      Then the request should be rejected with status code 404
