@REQ_MCA-3103
Feature: Create RATING-by-magazine-issue Relationship

  @RULE_MCA-3104
  Rule: Requests to create a ›by-magazine-issue‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3105 @implemented
    Scenario: Creating a ›by-magazine-issue‹ relationship with valid IDs
      Given there exists a "RATING" "93 Percent"
      And there exists a "MAGAZINE ISSUE" "Top Gear 7_2025"
      When the user creates a "by magazine issue" relationship between "93 Percent" and "Top Gear 7_2025"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
