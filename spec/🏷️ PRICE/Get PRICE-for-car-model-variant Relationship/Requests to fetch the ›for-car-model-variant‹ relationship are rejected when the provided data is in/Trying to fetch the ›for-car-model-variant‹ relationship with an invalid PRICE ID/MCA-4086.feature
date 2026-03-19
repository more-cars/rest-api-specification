@REQ_MCA-4080
Feature: Get PRICE-for-car-model-variant Relationship

  @RULE_MCA-4085
  Rule: Requests to fetch the ›for-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4086
    Scenario: Trying to fetch the ›for-car-model-variant‹ relationship with an invalid PRICE ID
      Given "PRICE" "Brand New" does NOT exist
      When the user requests the "for car model variant" relationship for "Brand New"
      Then the request should be rejected with status code 404
