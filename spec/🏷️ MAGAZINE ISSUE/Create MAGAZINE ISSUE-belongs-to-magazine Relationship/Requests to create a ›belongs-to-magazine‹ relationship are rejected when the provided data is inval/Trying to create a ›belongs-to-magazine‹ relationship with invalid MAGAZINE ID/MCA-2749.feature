@REQ_MCA-2744
Feature: Create MAGAZINE ISSUE-belongs-to-magazine Relationship

  @RULE_MCA-2747
  Rule: Requests to create a ›belongs-to-magazine‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2749 @implemented
    Scenario: Trying to create a ›belongs-to-magazine‹ relationship with invalid MAGAZINE ID
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      And "MAGAZINE" "Classic Cars" does NOT exist
      When the user creates a "belongs to magazine" relationship between "Sieger-Typen" and "Classic Cars"
      Then the request should be rejected with status code 404
