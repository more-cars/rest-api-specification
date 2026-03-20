@REQ_MCA-4114
Feature: Delete PRICE-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from PRICES
  So I can clean up bad data or test data

  @RULE_MCA-4117
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4120 @implemented
    Scenario: Trying to delete a ›has-image‹ relationship where both IDs are invalid
      Given "PRICE" "Brand New" does NOT exist
      And "IMAGE" "Test photo" does NOT exist
      When the user deletes the "has image" relationship between "Brand New" and "Test photo"
      Then the request should be rejected with status code 404
