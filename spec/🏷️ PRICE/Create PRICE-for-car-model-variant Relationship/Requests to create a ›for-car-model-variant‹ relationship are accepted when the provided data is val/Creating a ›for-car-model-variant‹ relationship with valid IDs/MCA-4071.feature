@REQ_MCA-4069
Feature: Create PRICE-for-car-model-variant Relationship

  @RULE_MCA-4070
  Rule: Requests to create a ›for-car-model-variant‹ relationship are accepted when the provided data is valid

    @TEST_MCA-4071 @implemented
    Scenario: Creating a ›for-car-model-variant‹ relationship with valid IDs
      Given there exists a "PRICE" "Brand New"
      And there exists a "CAR MODEL VARIANT" "Porsche Carrera GT"
      When the user creates a "for car model variant" relationship between "Brand New" and "Porsche Carrera GT"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
