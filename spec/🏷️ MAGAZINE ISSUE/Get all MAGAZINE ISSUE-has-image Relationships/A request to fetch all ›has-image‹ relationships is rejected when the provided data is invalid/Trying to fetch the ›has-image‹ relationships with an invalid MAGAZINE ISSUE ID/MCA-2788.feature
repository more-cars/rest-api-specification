@REQ_MCA-2782
Feature: Get all MAGAZINE ISSUE-has-image Relationships

  @RULE_MCA-2787
  Rule: A request to fetch all ›has-image‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-2788 @implemented
    Scenario: Trying to fetch the ›has-image‹ relationships with an invalid MAGAZINE ISSUE ID
      Given "MAGAZINE ISSUE" "Sieger-Typen" does NOT exist
      When the user requests all "has image" relationships for "Sieger-Typen"
      Then the request should be rejected with status code 404
