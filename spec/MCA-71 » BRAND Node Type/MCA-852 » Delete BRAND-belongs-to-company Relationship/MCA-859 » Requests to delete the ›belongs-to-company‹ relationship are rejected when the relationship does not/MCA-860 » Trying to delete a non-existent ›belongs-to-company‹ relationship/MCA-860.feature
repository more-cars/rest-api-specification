@REQ_MCA-852
Feature: Delete BRAND-belongs-to-company Relationship
  As an API contributor
  I want to be able to disconnect COMPANIES from BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-859
  Rule: Requests to delete the ›belongs-to-company‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-860 @implemented
    Scenario: Trying to delete a non-existent ›belongs-to-company‹ relationship
      Given there exists a "BRAND" "Cadillac"
      And there exists a "COMPANY" "VW AG"
      And there exists NO "belongs to company" relationship between "Cadillac" and "VW AG"
      When the user deletes the "belongs to company" relationship between "Cadillac" and "VW AG"
      Then the request should be rejected with status code 404
