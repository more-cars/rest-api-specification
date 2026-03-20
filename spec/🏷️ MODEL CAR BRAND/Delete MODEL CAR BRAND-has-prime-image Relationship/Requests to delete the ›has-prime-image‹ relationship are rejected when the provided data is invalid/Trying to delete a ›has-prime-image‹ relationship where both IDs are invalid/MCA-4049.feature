@REQ_MCA-4043
Feature: Delete MODEL CAR BRAND-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MODEL CAR BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-4046
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4049 @implemented
    Scenario: Trying to delete a ›has-prime-image‹ relationship where both IDs are invalid
      Given "MODEL CAR BRAND" "Hot Wheels" does NOT exist
      And "IMAGE" "Matchbox logo" does NOT exist
      When the user deletes the "has prime image" relationship between "Hot Wheels" and "Matchbox logo"
      Then the request should be rejected with status code 404
