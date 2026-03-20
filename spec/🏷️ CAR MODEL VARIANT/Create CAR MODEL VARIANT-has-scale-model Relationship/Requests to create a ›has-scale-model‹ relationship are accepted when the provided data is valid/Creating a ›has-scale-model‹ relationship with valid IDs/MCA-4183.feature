@REQ_MCA-4181
Feature: Create CAR MODEL VARIANT-has-scale-model Relationship

  @RULE_MCA-4182
  Rule: Requests to create a ›has-scale-model‹ relationship are accepted when the provided data is valid

    @TEST_MCA-4183 @implemented
    Scenario: Creating a ›has-scale-model‹ relationship with valid IDs
      Given there exists a "CAR MODEL VARIANT" "BMW M3 CSL"
      And there exists a "MODEL CAR" "Hotwheels M3"
      When the user creates a "has scale model" relationship between "BMW M3 CSL" and "Hotwheels M3"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
