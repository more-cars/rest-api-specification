@REQ_MCA-4141
Feature: Delete PRICE-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from PRICES
  So I can clean up bad data or test data

  @RULE_MCA-4144
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4146
    Scenario: Trying to delete a ›has-prime-image‹ relationship with invalid IMAGE ID
      Given there exists a "PRICE" "Brand New"
      And "IMAGE" "Test price" does NOT exist
      When the user deletes the "has prime image" relationship between "Brand New" and "Test price"
      Then the request should be rejected with status code 404
