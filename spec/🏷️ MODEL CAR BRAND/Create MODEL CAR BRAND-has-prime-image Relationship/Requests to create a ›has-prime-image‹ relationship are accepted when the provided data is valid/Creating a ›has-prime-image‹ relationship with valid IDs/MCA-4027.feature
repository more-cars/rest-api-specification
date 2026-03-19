@REQ_MCA-4025
Feature: Create MODEL CAR BRAND-has-prime-image Relationship

  @RULE_MCA-4026
  Rule: Requests to create a ›has-prime-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-4027
    Scenario: Creating a ›has-prime-image‹ relationship with valid IDs
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "IMAGE" "Hot Wheels logo"
      When the user creates a "has prime image" relationship between "Hot Wheels" and "Hot Wheels logo"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
