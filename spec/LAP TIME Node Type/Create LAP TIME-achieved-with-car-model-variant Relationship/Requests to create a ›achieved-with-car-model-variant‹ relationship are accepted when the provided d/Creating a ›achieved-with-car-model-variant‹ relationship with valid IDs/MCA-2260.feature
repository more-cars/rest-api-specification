@REQ_MCA-2258
Feature: Create LAP TIME-achieved-with-car-model-variant Relationship

  @RULE_MCA-2259
  Rule: Requests to create a ›achieved-with-car-model-variant‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2260 @implemented
    Scenario: Creating a ›achieved-with-car-model-variant‹ relationship with valid IDs
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "CAR MODEL VARIANT" "Opel Calibra V6"
      When the user creates a "achieved with car model variant" relationship between "fastest lap" and "Opel Calibra V6"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
