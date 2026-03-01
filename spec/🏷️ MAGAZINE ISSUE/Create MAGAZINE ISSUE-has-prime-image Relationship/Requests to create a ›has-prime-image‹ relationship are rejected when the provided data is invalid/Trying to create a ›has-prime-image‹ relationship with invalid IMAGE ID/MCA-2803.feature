@REQ_MCA-2798
Feature: Create MAGAZINE ISSUE-has-prime-image Relationship

  @RULE_MCA-2801
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2803
    Scenario: Trying to create a ›has-prime-image‹ relationship with invalid IMAGE ID
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      And "IMAGE" "Cover" does NOT exist
      When the user creates a "has prime image" relationship between "Sieger-Typen" and "Cover"
      Then the request should be rejected with status code 404
