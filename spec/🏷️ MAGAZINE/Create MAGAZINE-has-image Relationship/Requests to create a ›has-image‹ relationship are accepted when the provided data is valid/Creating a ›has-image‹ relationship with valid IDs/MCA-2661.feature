@REQ_MCA-2659
Feature: Create MAGAZINE-has-image Relationship

  @RULE_MCA-2660
  Rule: Requests to create a ›has-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2661 @implemented
    Scenario: Creating a ›has-image‹ relationship with valid IDs
      Given there exists a "MAGAZINE" "Top Gear"
      And there exists a "IMAGE" "cover"
      When the user creates a "has image" relationship between "Top Gear" and "cover"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
