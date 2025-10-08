@REQ_MCA-765
Feature: Delete BRAND-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-768
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-771
    Scenario: Trying to delete a ›has-image‹ relationship where both IDs are invalid
      Given "BRAND" "Bugatti" does NOT exist
      And "IMAGE" "logo" does NOT exist
      When the user deletes the "has-image" relationship between "Bugatti" and "logo"
      Then the request should be rejected with status code 404
