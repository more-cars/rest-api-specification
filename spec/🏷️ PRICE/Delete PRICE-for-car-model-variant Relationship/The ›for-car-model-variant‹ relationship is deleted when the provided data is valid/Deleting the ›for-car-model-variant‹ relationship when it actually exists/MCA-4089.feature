@REQ_MCA-4087
Feature: Delete PRICE-for-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from PRICES
  So I can clean up bad data or test data

  @RULE_MCA-4088
  Rule: The ›for-car-model-variant‹ relationship is deleted when the provided data is valid

    @TEST_MCA-4089 @implemented
    Scenario: Deleting the ›for-car-model-variant‹ relationship when it actually exists
      Given there exists a "PRICE" "Brand New"
      And there exists a "CAR MODEL VARIANT" "Porsche Carrera GT"
      And there exists a "for car model variant" relationship "R" between "Brand New" and "Porsche Carrera GT"
      When the user deletes the "for car model variant" relationship between "Brand New" and "Porsche Carrera GT"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
