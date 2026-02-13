@REQ_MCA-2548
Feature: Create GAMING PLATFORM-has-image Relationship

  @RULE_MCA-2549
  Rule: Requests to create a ›has-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2550 @implemented
    Scenario: Creating a ›has-image‹ relationship with valid IDs
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      And there exists a "IMAGE" "PS5 logo"
      When the user creates a "has image" relationship between "PlayStation 5" and "PS5 logo"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
