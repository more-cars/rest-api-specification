@REQ_MCA-2686
Feature: Create MAGAZINE-has-prime-image Relationship

  @RULE_MCA-2687
  Rule: Requests to create a ›has-prime-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2688
    Scenario: Creating a ›has-prime-image‹ relationship with valid IDs
      Given there exists a "MAGAZINE" "Top Gear"
      And there exists a "IMAGE" "cover"
      When the user creates a "has prime image" relationship between "Top Gear" and "cover"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
