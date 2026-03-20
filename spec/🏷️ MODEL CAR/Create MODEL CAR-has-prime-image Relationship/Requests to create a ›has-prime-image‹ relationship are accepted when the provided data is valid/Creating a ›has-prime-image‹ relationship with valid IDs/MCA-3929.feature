@REQ_MCA-3927
Feature: Create MODEL CAR-has-prime-image Relationship

  @RULE_MCA-3928
  Rule: Requests to create a ›has-prime-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3929 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with valid IDs
      Given there exists a "MODEL CAR" "F40 Scale Model"
      And there exists a "IMAGE" "F40 Matchbox photo"
      When the user creates a "has prime image" relationship between "F40 Scale Model" and "F40 Matchbox photo"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
