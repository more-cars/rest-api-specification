@REQ_MCA-2938
Feature: Create MAGAZINE ISSUE-followed-by-issue Relationship

  @RULE_MCA-2939
  Rule: Requests to create a ›followed-by-issue‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2940 @implemented
    Scenario: Creating a ›followed-by-issue‹ relationship with valid IDs
      Given there exists a "MAGAZINE ISSUE" "Top Gear 3_2025"
      And there exists a "MAGAZINE ISSUE" "Top Gear 4_2025"
      When the user creates a "followed by issue" relationship between "Top Gear 3_2025" and "Top Gear 4_2025"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
