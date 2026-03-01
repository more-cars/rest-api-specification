@REQ_MCA-2755
Feature: Get MAGAZINE ISSUE-belongs-to-magazine Relationship

  @RULE_MCA-2760
  Rule: Requests to fetch the ›belongs-to-magazine‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2761
    Scenario: Trying to fetch the ›belongs-to-magazine‹ relationship with an invalid MAGAZINE ISSUE ID
      Given "MAGAZINE ISSUE" "Sieger-Typen" does NOT exist
      When the user requests the "belongs to magazine" relationship for "Sieger-Typen"
      Then the request should be rejected with status code 404
