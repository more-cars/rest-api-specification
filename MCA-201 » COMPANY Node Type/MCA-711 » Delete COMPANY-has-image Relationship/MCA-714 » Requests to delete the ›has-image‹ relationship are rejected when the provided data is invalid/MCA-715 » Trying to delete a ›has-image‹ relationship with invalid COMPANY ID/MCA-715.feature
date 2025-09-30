@REQ_MCA-711
Feature: Delete COMPANY-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from COMPANIES
  So I can clean up bad data or test data

  @RULE_MCA-714
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-715
    Scenario: Trying to delete a ›has-image‹ relationship with invalid COMPANY ID
      Given "COMPANY" "Audi AG" does NOT exist
      And there exists a "IMAGE" "BMW logo"
      When the user deletes the "has-image" relationship between "Audi AG" and "BMW logo"
      Then the request should be rejected with status code 404
