@REQ_MCA-2771
Feature: Create MAGAZINE ISSUE-has-image Relationship

  @RULE_MCA-2774
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2775
    Scenario: Trying to create a ›has-image‹ relationship with invalid MAGAZINE ISSUE ID
      Given "MAGAZINE ISSUE" "Sieger-Typen" does NOT exist
      And there exists a "IMAGE" "Cover"
      When the user creates a "has image" relationship between "Sieger-Typen" and "Cover"
      Then the request should be rejected with status code 404
