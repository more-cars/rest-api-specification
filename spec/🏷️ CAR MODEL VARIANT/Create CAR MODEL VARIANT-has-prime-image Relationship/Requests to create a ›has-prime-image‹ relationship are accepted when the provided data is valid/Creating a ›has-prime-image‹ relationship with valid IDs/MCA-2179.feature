@REQ_MCA-2177
Feature: Create CAR MODEL VARIANT-has-prime-image Relationship

  @RULE_MCA-2178
  Rule: Requests to create a ›has-prime-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2179 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with valid IDs
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exists a "IMAGE" "M3 front-left"
      When the user creates a "has prime image" relationship between "BMW M3" and "M3 front-left"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
