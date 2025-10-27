@REQ_MCA-1086
Feature: Create TRACK LAYOUT-has-image Relationship

  @RULE_MCA-1087
  Rule: Requests to create a ›has-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1088 @implemented
    Scenario: Creating a ›has-image‹ relationship with valid IDs
      Given there exists a "TRACK LAYOUT" "GP Circuit"
      And there exists a "IMAGE" "circuit map"
      When the user creates a "has image" relationship between "GP Circuit" and "circuit map"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
