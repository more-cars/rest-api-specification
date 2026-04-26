@REQ_MCA-5406
Feature: Delete MAGAZINE ISSUE-documents-lap-time Relationship
  As an API contributor
  I want to be able to disconnect LAP TIMES from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-5407
  Rule: The ›documents-lap-time‹ relationship is deleted when the provided data is valid

    @TEST_MCA-5408
    Scenario: Deleting the ›documents-lap-time‹ relationship when it actually exists
      Given there exists a "MAGAZINE ISSUE" "Top Gear 11_2025"
      And there exists a "LAP TIME" "test lap"
      And there exists a "documents lap time" relationship "R" between "Top Gear 11_2025" and "test lap"
      When the user deletes the "documents lap time" relationship between "Top Gear 11_2025" and "test lap"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
