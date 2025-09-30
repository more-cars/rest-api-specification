@REQ_MCA-675
Feature: Delete COMPANY-has-brand Relationship
  As an API contributor\
  I want to be able to disconnect BRANDS from COMPANIES\
  So I can clean up bad data or test data

  @RULE_MCA-676
  Rule: The ›has-brand‹ relationship is deleted when the provided data is valid

    @TEST_MCA-677 @implemented
    Scenario: Deleting the ›has-brand‹ relationship when it actually exists
      Given there exists a "COMPANY" "BMW AG"
      And there exists a "BRAND" "Toyota"
      And there exists a "has-brand" relationship "R" between "BMW AG" and "Toyota"
      When the user deletes the "has-brand" relationship between "BMW AG" and "Toyota"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
