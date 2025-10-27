@REQ_MCA-1648
Feature: Create RACING SESSION-has-image Relationship

  @RULE_MCA-1649
  Rule: Requests to create a ›has-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1650
    Scenario: Creating a ›has-image‹ relationship with valid IDs
      Given there exists a "RACING SESSION" "Grand Prix"
      And there exists a "IMAGE" "starting grid"
      When the user creates a "has image" relationship between "Grand Prix" and "starting grid"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
