@REQ_MCA-2762
Feature: Delete MAGAZINE ISSUE-belongs-to-magazine Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINES from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-2765
  Rule: Requests to delete the ›belongs-to-magazine‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2766
    Scenario: Trying to delete a ›belongs-to-magazine‹ relationship with invalid MAGAZINE ISSUE ID
      Given "MAGAZINE ISSUE" "Sieger-Typen" does NOT exist
      And there exists a "MAGAZINE" "Top Gear"
      When the user deletes the "belongs to magazine" relationship between "Sieger-Typen" and "Top Gear"
      Then the request should be rejected with status code 404
