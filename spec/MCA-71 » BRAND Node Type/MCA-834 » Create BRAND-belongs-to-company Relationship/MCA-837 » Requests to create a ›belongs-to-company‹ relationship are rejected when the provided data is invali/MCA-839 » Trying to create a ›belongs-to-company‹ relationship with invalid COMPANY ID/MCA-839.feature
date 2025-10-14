@REQ_MCA-834
Feature: Create BRAND-belongs-to-company Relationship

  @RULE_MCA-837
  Rule: Requests to create a ›belongs-to-company‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-839
    Scenario: Trying to create a ›belongs-to-company‹ relationship with invalid COMPANY ID
      Given there exists a "BRAND" "Bentley"
      And "COMPANY" "VW AG" does NOT exist
      When the user creates a "belongs to company" relationship between "Bentley" and "VW AG"
      Then the request should be rejected with status code 404
