@REQ_MCA-2809
Feature: Get MAGAZINE ISSUE-has-prime-image Relationship

  @RULE_MCA-2814
  Rule: Requests to fetch the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2815 @implemented
    Scenario: Trying to fetch the ›has-prime-image‹ relationship with an invalid MAGAZINE ISSUE ID
      Given "MAGAZINE ISSUE" "Sieger-Typen" does NOT exist
      When the user requests the "has prime image" relationship for "Sieger-Typen"
      Then the request should be rejected with status code 404
