@REQ_MCA-4123
Feature: Create PRICE-has-prime-image Relationship

  @RULE_MCA-4126
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4128 @implemented
    Scenario: Trying to create a ›has-prime-image‹ relationship with invalid IMAGE ID
      Given there exists a "PRICE" "Brand New"
      And "IMAGE" "Price tag" does NOT exist
      When the user creates a "has prime image" relationship between "Brand New" and "Price tag"
      Then the request should be rejected with status code 404
