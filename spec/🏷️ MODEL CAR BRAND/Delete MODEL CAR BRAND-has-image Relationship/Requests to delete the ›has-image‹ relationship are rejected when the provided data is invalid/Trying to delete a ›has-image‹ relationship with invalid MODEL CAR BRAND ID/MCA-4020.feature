@REQ_MCA-4016
Feature: Delete MODEL CAR BRAND-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MODEL CAR BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-4019
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4020
    Scenario: Trying to delete a ›has-image‹ relationship with invalid MODEL CAR BRAND ID
      Given "MODEL CAR BRAND" "Hot Wheels" does NOT exist
      And there exists a "IMAGE" "Matchbox logo"
      When the user deletes the "has image" relationship between "Hot Wheels" and "Matchbox logo"
      Then the request should be rejected with status code 404
