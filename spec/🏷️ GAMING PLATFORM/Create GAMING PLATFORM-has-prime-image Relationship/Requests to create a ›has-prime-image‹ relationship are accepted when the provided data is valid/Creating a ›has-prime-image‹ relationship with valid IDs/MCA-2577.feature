@REQ_MCA-2575
Feature: Create GAMING PLATFORM-has-prime-image Relationship

  @RULE_MCA-2576
  Rule: Requests to create a ›has-prime-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2577 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with valid IDs
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      And there exists a "IMAGE" "PS5 logo"
      When the user creates a "has prime image" relationship between "PlayStation 5" and "PS5 logo"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
