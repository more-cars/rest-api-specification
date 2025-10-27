@REQ_MCA-785
Feature: Delete BRAND-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-788
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-789 @implemented
    Scenario: Trying to delete a ›has-prime-image‹ relationship with invalid BRAND ID
      Given "BRAND" "Bugatti" does NOT exist
      And there exists a "IMAGE" "Ferrari logo"
      When the user deletes the "has prime image" relationship between "Bugatti" and "Ferrari logo"
      Then the request should be rejected with status code 404
