@REQ_MCA-2328
Feature: Create RACING GAME-features-car-model-variant Relationship

  @RULE_MCA-2329
  Rule: Requests to create a ›features-car-model-variant‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2330 @implemented
    Scenario: Creating a ›features-car-model-variant‹ relationship with valid IDs
      Given there exists a "RACING GAME" "Gran Turismo"
      And there exists a "CAR MODEL VARIANT" "Aston Martin DB7"
      When the user creates a "features car model variant" relationship between "Gran Turismo" and "Aston Martin DB7"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
