@REQ_MCA-4114
Feature: Delete PRICE-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from PRICES
  So I can clean up bad data or test data

  @RULE_MCA-4117
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4118
    Scenario: Trying to delete a ›has-image‹ relationship with invalid PRICE ID
      Given "PRICE" "Brand New" does NOT exist
      And there exists a "IMAGE" "Test photo"
      When the user deletes the "has image" relationship between "Brand New" and "Test photo"
      Then the request should be rejected with status code 404
