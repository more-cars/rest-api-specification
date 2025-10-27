@REQ_MCA-711
Feature: Delete COMPANY-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from COMPANIES
  So I can clean up bad data or test data

  @RULE_MCA-714
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-717 @implemented
    Scenario: Trying to delete a ›has-image‹ relationship where both IDs are invalid
      Given "COMPANY" "Audi AG" does NOT exist
      And "IMAGE" "BMW logo" does NOT exist
      When the user deletes the "has-image" relationship between "Audi AG" and "BMW logo"
      Then the request should be rejected with status code 404
