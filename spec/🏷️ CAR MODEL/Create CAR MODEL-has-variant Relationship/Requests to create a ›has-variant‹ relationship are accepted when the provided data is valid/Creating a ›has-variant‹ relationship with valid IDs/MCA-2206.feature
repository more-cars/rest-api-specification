@REQ_MCA-2204
Feature: Create CAR MODEL-has-variant Relationship

  @RULE_MCA-2205
  Rule: Requests to create a ›has-variant‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2206 @implemented
    Scenario: Creating a ›has-variant‹ relationship with valid IDs
      Given there exists a "CAR MODEL" "Golf"
      And there exists a "CAR MODEL VARIANT" "VW Golf GTI"
      When the user creates a "has variant" relationship between "Golf" and "VW Golf GTI"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
