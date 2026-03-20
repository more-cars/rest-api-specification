@REQ_MCA-3873
Feature: Create MODEL CAR-made-by-model-car-brand Relationship

  @RULE_MCA-3874
  Rule: Requests to create a ›made-by-model-car-brand‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3875 @implemented
    Scenario: Creating a ›made-by-model-car-brand‹ relationship with valid IDs
      Given there exists a "MODEL CAR" "F40 Scale Model"
      And there exists a "MODEL CAR BRAND" "Matchbox"
      When the user creates a "made by model car brand" relationship between "F40 Scale Model" and "Matchbox"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
