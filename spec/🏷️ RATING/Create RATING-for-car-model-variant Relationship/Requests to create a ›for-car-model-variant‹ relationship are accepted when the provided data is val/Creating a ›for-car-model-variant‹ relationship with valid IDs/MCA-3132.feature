@REQ_MCA-3130
Feature: Create RATING-for-car-model-variant Relationship

  @RULE_MCA-3131
  Rule: Requests to create a ›for-car-model-variant‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3132 @implemented
    Scenario: Creating a ›for-car-model-variant‹ relationship with valid IDs
      Given there exists a "RATING" "93 Percent"
      And there exists a "CAR MODEL VARIANT" "McLaren 750S"
      When the user creates a "for car model variant" relationship between "93 Percent" and "McLaren 750S"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
