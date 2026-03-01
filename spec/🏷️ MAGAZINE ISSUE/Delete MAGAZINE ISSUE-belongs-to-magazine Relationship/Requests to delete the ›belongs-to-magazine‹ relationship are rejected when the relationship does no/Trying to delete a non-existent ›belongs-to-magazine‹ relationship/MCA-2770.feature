@REQ_MCA-2762
Feature: Delete MAGAZINE ISSUE-belongs-to-magazine Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINES from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-2769
  Rule: Requests to delete the ›belongs-to-magazine‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2770
    Scenario: Trying to delete a non-existent ›belongs-to-magazine‹ relationship
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      And there exists a "MAGAZINE" "Top Gear"
      And there exists NO "belongs to magazine" relationship between "Sieger-Typen" and "Top Gear"
      When the user deletes the "belongs to magazine" relationship between "Sieger-Typen" and "Top Gear"
      Then the request should be rejected with status code 404
