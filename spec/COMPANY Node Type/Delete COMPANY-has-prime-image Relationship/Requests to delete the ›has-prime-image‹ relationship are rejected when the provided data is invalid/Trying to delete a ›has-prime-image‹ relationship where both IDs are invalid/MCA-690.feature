@REQ_MCA-684
Feature: Delete COMPANY-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from COMPANIES
  So I can clean up bad data or test data

  @RULE_MCA-687
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-690 @implemented
    Scenario: Trying to delete a ›has-prime-image‹ relationship where both IDs are invalid
      Given "COMPANY" "BMW AG" does NOT exist
      And "IMAGE" "ferrari logo" does NOT exist
      When the user deletes the "has-prime-image" relationship between "BMW AG" and "ferrari logo"
      Then the request should be rejected with status code 404
