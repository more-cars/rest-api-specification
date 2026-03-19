@REQ_MCA-4087
Feature: Delete PRICE-for-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from PRICES
  So I can clean up bad data or test data

  @RULE_MCA-4090
  Rule: Requests to delete the ›for-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4093
    Scenario: Trying to delete a ›for-car-model-variant‹ relationship where both IDs are invalid
      Given "PRICE" "Brand New" does NOT exist
      And "CAR MODEL VARIANT" "Porsche Carrera GT" does NOT exist
      When the user deletes the "for car model variant" relationship between "Brand New" and "Porsche Carrera GT"
      Then the request should be rejected with status code 404
