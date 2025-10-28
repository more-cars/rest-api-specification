@REQ_MCA-1675
Feature: Create RACING SESSION-has-prime-image Relationship

  @RULE_MCA-1676
  Rule: Requests to create a ›has-prime-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1677 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with valid IDs
      Given there exists a "RACING SESSION" "Grand Prix"
      And there exists a "IMAGE" "starting grid"
      When the user creates a "has prime image" relationship between "Grand Prix" and "starting grid"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
