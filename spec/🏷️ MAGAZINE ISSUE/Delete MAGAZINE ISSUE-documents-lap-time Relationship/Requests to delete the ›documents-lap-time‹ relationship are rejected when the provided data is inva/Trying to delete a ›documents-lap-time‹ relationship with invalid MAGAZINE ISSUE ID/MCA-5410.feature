@REQ_MCA-5406
Feature: Delete MAGAZINE ISSUE-documents-lap-time Relationship
  As an API contributor
  I want to be able to disconnect LAP TIMES from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-5409
  Rule: Requests to delete the ›documents-lap-time‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5410
    Scenario: Trying to delete a ›documents-lap-time‹ relationship with invalid MAGAZINE ISSUE ID
      Given "MAGAZINE ISSUE" "Top Gear 11_2025" does NOT exist
      And there exists a "LAP TIME" "test lap"
      When the user deletes the "documents lap time" relationship between "Top Gear 11_2025" and "test lap"
      Then the request should be rejected with status code 404
