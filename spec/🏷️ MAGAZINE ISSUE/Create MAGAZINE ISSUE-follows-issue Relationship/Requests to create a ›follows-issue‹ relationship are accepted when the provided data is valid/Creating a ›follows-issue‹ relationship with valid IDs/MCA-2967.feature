@REQ_MCA-2965
Feature: Create MAGAZINE ISSUE-follows-issue Relationship

  @RULE_MCA-2966
  Rule: Requests to create a ›follows-issue‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2967
    Scenario: Creating a ›follows-issue‹ relationship with valid IDs
      Given there exists a "MAGAZINE ISSUE" "Top Gear 3_2025"
      And there exists a "MAGAZINE ISSUE" "Top Gear 2_2025"
      When the user creates a "follows issue" relationship between "Top Gear 3_2025" and "Top Gear 2_2025"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
