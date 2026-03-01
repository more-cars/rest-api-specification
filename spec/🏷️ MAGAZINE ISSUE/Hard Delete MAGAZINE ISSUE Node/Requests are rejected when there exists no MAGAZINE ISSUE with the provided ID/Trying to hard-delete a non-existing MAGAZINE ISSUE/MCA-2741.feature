@REQ_MCA-2737
Feature: Hard Delete MAGAZINE ISSUE Node
  As an API contributor
  I want to be able to delete a MAGAZINE ISSUE
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-2740
  Rule: Requests are rejected when there exists no MAGAZINE ISSUE with the provided ID

    @TEST_MCA-2741
    Scenario: Trying to hard-delete a non-existing MAGAZINE ISSUE
      Given "MAGAZINE ISSUE" "Sieger-Typen" does NOT exist
      When the user hard-deletes the "MAGAZINE ISSUE" "Sieger-Typen"
      Then the request should be rejected with status code 404
