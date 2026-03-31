@REQ_MCA-5035
Feature: Delete MODEL CAR BRAND-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from MODEL CAR BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-5038
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5041
    Scenario: Trying to delete a ›has-video‹ relationship where both IDs are invalid
      Given "MODEL CAR BRAND" "Hot Wheels" does NOT exist
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-video" relationship between "Hot Wheels" and "Promo Video"
      Then the request should be rejected with status code 404
