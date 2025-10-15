@REQ_MCA-852
Feature: Delete BRAND-belongs-to-company Relationship
  As an API contributor
  I want to be able to disconnect COMPANIES from BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-855
  Rule: Requests to delete the ›belongs-to-company‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-856 @implemented
    Scenario: Trying to delete a ›belongs-to-company‹ relationship with invalid BRAND ID
      Given "BRAND" "Cadillac" does NOT exist
      And there exists a "COMPANY" "VW AG"
      When the user deletes the "belongs to company" relationship between "Cadillac" and "VW AG"
      Then the request should be rejected with status code 404
