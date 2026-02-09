@REQ_MCA-2382
Feature: Create RACING GAME-has-image Relationship

  @RULE_MCA-2383
  Rule: Requests to create a ›has-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2384
    Scenario: Creating a ›has-image‹ relationship with valid IDs
      Given there exists a "RACING GAME" "F1 2025"
      And there exists a "IMAGE" "dvd cover"
      When the user creates a "has image" relationship between "F1 2025" and "dvd cover"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
