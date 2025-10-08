@REQ_MCA-765
Feature: Delete BRAND-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-768
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-769
    Scenario: Trying to delete a ›has-image‹ relationship with invalid BRAND ID
      Given "BRAND" "Bugatti" does NOT exist
      And there exists a "IMAGE" "logo"
      When the user deletes the "has-image" relationship between "Bugatti" and "logo"
      Then the request should be rejected with status code 404
