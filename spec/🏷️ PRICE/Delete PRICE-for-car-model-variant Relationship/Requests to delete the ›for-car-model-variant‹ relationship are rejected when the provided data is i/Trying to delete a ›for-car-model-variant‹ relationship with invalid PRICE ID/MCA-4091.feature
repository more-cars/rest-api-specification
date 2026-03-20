@REQ_MCA-4087
Feature: Delete PRICE-for-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from PRICES
  So I can clean up bad data or test data

  @RULE_MCA-4090
  Rule: Requests to delete the ›for-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4091 @implemented
    Scenario: Trying to delete a ›for-car-model-variant‹ relationship with invalid PRICE ID
      Given "PRICE" "Brand New" does NOT exist
      And there exists a "CAR MODEL VARIANT" "Porsche Carrera GT"
      When the user deletes the "for car model variant" relationship between "Brand New" and "Porsche Carrera GT"
      Then the request should be rejected with status code 404
