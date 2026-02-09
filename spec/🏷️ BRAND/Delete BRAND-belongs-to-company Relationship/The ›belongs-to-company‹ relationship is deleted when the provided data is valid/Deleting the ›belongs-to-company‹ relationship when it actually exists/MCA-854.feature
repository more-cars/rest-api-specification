@REQ_MCA-852
Feature: Delete BRAND-belongs-to-company Relationship
  As an API contributor
  I want to be able to disconnect COMPANIES from BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-853
  Rule: The ›belongs-to-company‹ relationship is deleted when the provided data is valid

    @TEST_MCA-854 @implemented
    Scenario: Deleting the ›belongs-to-company‹ relationship when it actually exists
      Given there exists a "BRAND" "Cadillac"
      And there exists a "COMPANY" "VW AG"
      And there exists a "belongs to company" relationship "R" between "Cadillac" and "VW AG"
      When the user deletes the "belongs to company" relationship between "Cadillac" and "VW AG"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
