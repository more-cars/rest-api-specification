@REQ_MCA-3846
Feature: Create MODEL CAR-is-scale-model-of-car-model-variant Relationship

  @RULE_MCA-3847
  Rule: Requests to create a ›is-scale-model-of-car-model-variant‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3848 @implemented
    Scenario: Creating a ›is-scale-model-of-car-model-variant‹ relationship with valid IDs
      Given there exists a "MODEL CAR" "F40 Matchbox"
      And there exists a "CAR MODEL VARIANT" "Ferrari F40"
      When the user creates a "is scale model of car model variant" relationship between "F40 Matchbox" and "Ferrari F40"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
