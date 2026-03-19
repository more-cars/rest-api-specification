@REQ_MCA-4087
Feature: Delete PRICE-for-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from PRICES
  So I can clean up bad data or test data

  @RULE_MCA-4094
  Rule: Requests to delete the ›for-car-model-variant‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-4095
    Scenario: Trying to delete a non-existent ›for-car-model-variant‹ relationship
      Given there exists a "PRICE" "Brand New"
      And there exists a "CAR MODEL VARIANT" "Porsche Carrera GT"
      And there exists NO "for car model variant" relationship between "Brand New" and "Porsche Carrera GT"
      When the user deletes the "for car model variant" relationship between "Brand New" and "Porsche Carrera GT"
      Then the request should be rejected with status code 404
