@REQ_MCA-675
Feature: Delete COMPANY-has-brand Relationship
  As an API contributor\
  I want to be able to disconnect BRANDS from COMPANIES\
  So I can clean up bad data or test data

  @RULE_MCA-678
  Rule: Requests to delete the ›has-brand‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-680 @implemented
    Scenario: Trying to delete a ›has-brand‹ relationship with invalid BRAND ID
      Given there exists a "COMPANY" "BMW AG"
      And "BRAND" "Toyota" does NOT exist
      When the user deletes the "has-brand" relationship between "BMW AG" and "Toyota"
      Then the request should be rejected with status code 404
