@REQ_MCA-3900
Feature: Create MODEL CAR-has-image Relationship

  @RULE_MCA-3901
  Rule: Requests to create a ›has-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3902
    Scenario: Creating a ›has-image‹ relationship with valid IDs
      Given there exists a "MODEL CAR" "F40 Scale Model"
      And there exists a "IMAGE" "F40 Matchbox photo"
      When the user creates a "has image" relationship between "F40 Scale Model" and "F40 Matchbox photo"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
