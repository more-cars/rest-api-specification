@REQ_MCA-4069
Feature: Create PRICE-for-car-model-variant Relationship

  @RULE_MCA-4076
  Rule: The same ›for-car-model-variant‹ relationship between the same nodes can only be created once

    @TEST_MCA-4077 @implemented
    Scenario: Trying to create the same ›for-car-model-variant‹ relationship again
      Given there exists a "PRICE" "Brand New"
      And there exists a "CAR MODEL VARIANT" "Porsche Carrera GT"
      And there exists a "for car model variant" relationship between "Brand New" and "Porsche Carrera GT"
      When the user creates a "for car model variant" relationship between "Brand New" and "Porsche Carrera GT"
      Then the response should return with status code 304
