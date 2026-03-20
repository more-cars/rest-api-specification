@REQ_MCA-3998
Feature: Create MODEL CAR BRAND-has-image Relationship

  @RULE_MCA-3999
  Rule: Requests to create a ›has-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-4000 @implemented
    Scenario: Creating a ›has-image‹ relationship with valid IDs
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "IMAGE" "Hot Wheels logo"
      When the user creates a "has image" relationship between "Hot Wheels" and "Hot Wheels logo"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
