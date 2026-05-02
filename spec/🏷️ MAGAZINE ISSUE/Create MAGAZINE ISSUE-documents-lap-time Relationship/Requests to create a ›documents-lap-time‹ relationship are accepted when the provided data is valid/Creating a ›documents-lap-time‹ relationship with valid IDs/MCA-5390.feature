@REQ_MCA-5388
Feature: Create MAGAZINE ISSUE-documents-lap-time Relationship

  @RULE_MCA-5389
  Rule: Requests to create a ›documents-lap-time‹ relationship are accepted when the provided data is valid

    @TEST_MCA-5390 @implemented
    Scenario: Creating a ›documents-lap-time‹ relationship with valid IDs
      Given there exists a "MAGAZINE ISSUE" "Top Gear 11_2025"
      And there exists a "LAP TIME" "fastest lap"
      When the user creates a "documents lap time" relationship between "Top Gear 11_2025" and "fastest lap"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
