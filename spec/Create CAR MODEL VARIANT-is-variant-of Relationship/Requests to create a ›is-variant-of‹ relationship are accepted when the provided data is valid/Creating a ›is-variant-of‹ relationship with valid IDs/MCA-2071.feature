@REQ_MCA-2069
Feature: Create CAR MODEL VARIANT-is-variant-of Relationship

  @RULE_MCA-2070
  Rule: Requests to create a ›is-variant-of‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2071 @implemented
    Scenario: Creating a ›is-variant-of‹ relationship with valid IDs
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exists a "CAR MODEL" "3-series"
      When the user creates a "is variant of" relationship between "BMW M3" and "3-series"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
