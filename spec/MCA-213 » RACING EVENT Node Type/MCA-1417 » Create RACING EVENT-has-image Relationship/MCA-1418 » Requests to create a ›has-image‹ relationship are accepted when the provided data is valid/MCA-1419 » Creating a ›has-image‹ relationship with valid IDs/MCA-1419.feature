@REQ_MCA-1417
Feature: Create RACING EVENT-has-image Relationship

  @RULE_MCA-1418
  Rule: Requests to create a ›has-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1419 @implemented
    Scenario: Creating a ›has-image‹ relationship with valid IDs
      Given there exists a "RACING EVENT" "GP Silverstone"
      And there exists a "IMAGE" "starting grid"
      When the user creates a "has image" relationship between "GP Silverstone" and "starting grid"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
