@REQ_MCA-2231
Feature: Create SESSION RESULT-achieved-with-car-model-variant Relationship

  @RULE_MCA-2232
  Rule: Requests to create a ›achieved-with-car-model-variant‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2233 @implemented
    Scenario: Creating a ›achieved-with-car-model-variant‹ relationship with valid IDs
      Given there exists a "SESSION RESULT" "1st place"
      And there exists a "CAR MODEL VARIANT" "Ferrari 499P"
      When the user creates a "achieved with car model variant" relationship between "1st place" and "Ferrari 499P"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
