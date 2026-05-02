@REQ_MCA-5406
Feature: Delete MAGAZINE ISSUE-documents-lap-time Relationship
  As an API contributor
  I want to be able to disconnect LAP TIMES from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-5413
  Rule: Requests to delete the ›documents-lap-time‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-5414 @implemented
    Scenario: Trying to delete a non-existent ›documents-lap-time‹ relationship
      Given there exists a "MAGAZINE ISSUE" "Top Gear 11_2025"
      And there exists a "LAP TIME" "test lap"
      And there exists NO "documents lap time" relationship between "Top Gear 11_2025" and "test lap"
      When the user deletes the "documents lap time" relationship between "Top Gear 11_2025" and "test lap"
      Then the request should be rejected with status code 404
