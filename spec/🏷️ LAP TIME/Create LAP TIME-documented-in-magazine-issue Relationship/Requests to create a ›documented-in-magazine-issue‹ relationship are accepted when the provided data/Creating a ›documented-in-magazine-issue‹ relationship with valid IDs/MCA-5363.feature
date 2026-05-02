@REQ_MCA-5361
Feature: Create LAP TIME-documented-in-magazine-issue Relationship

  @RULE_MCA-5362
  Rule: Requests to create a ›documented-in-magazine-issue‹ relationship are accepted when the provided data is valid

    @TEST_MCA-5363 @implemented
    Scenario: Creating a ›documented-in-magazine-issue‹ relationship with valid IDs
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "MAGAZINE ISSUE" "Top Gear 11_2025"
      When the user creates a "documented in magazine issue" relationship between "fastest lap" and "Top Gear 11_2025"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
