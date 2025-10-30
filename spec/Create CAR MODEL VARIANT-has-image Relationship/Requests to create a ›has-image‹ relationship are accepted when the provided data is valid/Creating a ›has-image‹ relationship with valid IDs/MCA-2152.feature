@REQ_MCA-2150
Feature: Create CAR MODEL VARIANT-has-image Relationship

  @RULE_MCA-2151
  Rule: Requests to create a ›has-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2152 @implemented
    Scenario: Creating a ›has-image‹ relationship with valid IDs
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exists a "IMAGE" "M3 poster"
      When the user creates a "has image" relationship between "BMW M3" and "M3 poster"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
