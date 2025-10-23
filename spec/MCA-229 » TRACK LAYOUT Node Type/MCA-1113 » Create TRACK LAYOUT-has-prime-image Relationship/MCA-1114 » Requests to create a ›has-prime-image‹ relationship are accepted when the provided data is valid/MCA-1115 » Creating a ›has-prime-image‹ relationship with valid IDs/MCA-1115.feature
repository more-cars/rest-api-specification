@REQ_MCA-1113
Feature: Create TRACK LAYOUT-has-prime-image Relationship

  @RULE_MCA-1114
  Rule: Requests to create a ›has-prime-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1115 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with valid IDs
      Given there exists a "TRACK LAYOUT" "GP Circuit"
      And there exists a "IMAGE" "latest circuit map"
      When the user creates a "has prime image" relationship between "GP Circuit" and "latest circuit map"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
