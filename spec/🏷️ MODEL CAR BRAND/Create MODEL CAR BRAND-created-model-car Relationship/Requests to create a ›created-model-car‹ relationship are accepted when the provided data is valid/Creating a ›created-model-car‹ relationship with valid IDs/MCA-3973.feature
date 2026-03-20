@REQ_MCA-3971
Feature: Create MODEL CAR BRAND-created-model-car Relationship

  @RULE_MCA-3972
  Rule: Requests to create a ›created-model-car‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3973 @implemented
    Scenario: Creating a ›created-model-car‹ relationship with valid IDs
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "MODEL CAR" "Camaro Hot Wheels"
      When the user creates a "created model car" relationship between "Hot Wheels" and "Camaro Hot Wheels"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
