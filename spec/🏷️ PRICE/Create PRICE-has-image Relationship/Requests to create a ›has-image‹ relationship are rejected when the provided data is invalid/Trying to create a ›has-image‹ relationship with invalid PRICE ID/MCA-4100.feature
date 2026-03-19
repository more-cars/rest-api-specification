@REQ_MCA-4096
Feature: Create PRICE-has-image Relationship

  @RULE_MCA-4099
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4100
    Scenario: Trying to create a ›has-image‹ relationship with invalid PRICE ID
      Given "PRICE" "Brand New" does NOT exist
      And there exists a "IMAGE" "Price tag"
      When the user creates a "has image" relationship between "Brand New" and "Price tag"
      Then the request should be rejected with status code 404
