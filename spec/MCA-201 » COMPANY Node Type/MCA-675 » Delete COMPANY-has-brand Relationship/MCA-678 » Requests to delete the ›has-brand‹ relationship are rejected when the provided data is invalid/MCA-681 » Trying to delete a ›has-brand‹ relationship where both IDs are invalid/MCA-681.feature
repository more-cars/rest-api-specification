@REQ_MCA-675
Feature: Delete COMPANY-has-brand Relationship
  As an API contributor\
  I want to be able to disconnect BRANDS from COMPANIES\
  So I can clean up bad data or test data

  @RULE_MCA-678
  Rule: Requests to delete the ›has-brand‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-681 @implemented
    Scenario: Trying to delete a ›has-brand‹ relationship where both IDs are invalid
      Given "COMPANY" "BMW AG" does NOT exist
      And "BRAND" "Toyota" does NOT exist
      When the user deletes the "has-brand" relationship between "BMW AG" and "Toyota"
      Then the request should be rejected with status code 404
