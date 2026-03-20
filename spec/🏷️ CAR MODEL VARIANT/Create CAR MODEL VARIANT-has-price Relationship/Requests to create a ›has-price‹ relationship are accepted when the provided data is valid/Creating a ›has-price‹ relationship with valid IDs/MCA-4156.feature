@REQ_MCA-4154
Feature: Create CAR MODEL VARIANT-has-price Relationship

  @RULE_MCA-4155
  Rule: Requests to create a ›has-price‹ relationship are accepted when the provided data is valid

    @TEST_MCA-4156 @implemented
    Scenario: Creating a ›has-price‹ relationship with valid IDs
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exists a "PRICE" "base price"
      When the user creates a "has price" relationship between "BMW M3" and "base price"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
