@REQ_MCA-684
Feature: Delete COMPANY-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from COMPANIES
  So I can clean up bad data or test data

  @RULE_MCA-687
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-688
    Scenario: Trying to delete a ›has-prime-image‹ relationship with invalid COMPANY ID
      Given "COMPANY" "BMW AG" does NOT exist
      And there exists a "IMAGE" "ferrari logo"
      When the user deletes the "has-prime-image" relationship between "BMW AG" and "ferrari logo"
      Then the request should be rejected with status code 404
